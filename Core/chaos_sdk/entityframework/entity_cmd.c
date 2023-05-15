#include "entity_cmd.h"


#ifdef C_ENTITY_FRAMEWORK_LIB_ENA
#include "entity_packet.h"
#include "smart_assert.h"

void entityCMD(u8* const inputData, u8* const outputData, reg* const size, const reg maxOutBufferSize, PREPROCESSOR_CTX_TYPE(ctx))
{
	M_Assert_Break((inputData == NULL) || (outputData == NULL) || (size == NULL), M_EMPTY, return, "entityCMD: invalid input");

	const reg sizeInternal = (*size);
	M_Assert_Break((sizeInternal == 0) || (maxOutBufferSize == 0), M_EMPTY, return, "entityCMD: invalid input size");

	reg Wpos = 1;
	reg Rpos = 1;
	reg entitySize = 0;
	const u8 cmd = inputData[0];


	// write header------------------------------------------
	outputData[0] =   cmd;                     // CMD_ID

	// do logic------------------------------------------
	switch(cmd) {

	/* **********************************************************************************************************************************
	 *  ENTITY PING
	 */
	case ENTITY_PING_CMD: {
		entitySize = 1;

#ifdef USE_ENTITY_PING
		outputData[1] = entities_ping();
#else
		outputData[1] = 1;
#endif /* USE_ENTITY_PING */
		break;}

	/* **********************************************************************************************************************************
	 *  READ MAIN TYPE DIMENSIONS
	 */
	case ENTITY_READ_DIMENSIONS: {
		readEntitiesSizes((outputData + Wpos), &entitySize, (maxOutBufferSize - Wpos));
		break;}

	/* **********************************************************************************************************************************
	 *  READ DESCRIPTIONS
	 */
	case READ_ENTITY_DESCRIPTIONS: {
		//ENTITY_DBG_ASSERT_BUF( (Rpos + (ENTITIES_SIZEOF << 1)) > sizeInternal, M_EMPTY, return, "entityCMD: read size more than buffer");

		// read entity start
		TYPEOF_STRUCT(EntityInfo, entities_count) startEntityNumber = readEntityNumberFromBuf(&inputData[Rpos]);
		Rpos += ENTITIES_SIZEOF;

		// read number of entity
		//        TYPEOF_STRUCT(EntityInfo, entities_count) len; //(WARNING!!!) do not supported on old version!!!!!!!
		//        readEntityNumberFromBuf(&len, &inputData[Rpos]);
		//        Rpos += ENTITIES_SIZEOF;
		const TYPEOF_STRUCT(EntityInfo, entities_count) len = inputData[Rpos++]; // support on old version (this is glitch!!!)

		// read descriptions function
		readEntitiesDescriptions(startEntityNumber, len, (outputData + Wpos), &entitySize, (maxOutBufferSize - Wpos));
		break;}


	/* **********************************************************************************************************************************
	 *  READ FIELDS
	 */
	case READ_ENTITY_FIELDS: {
		//ENTITY_DBG_ASSERT_BUF( (Rpos + ENTITIES_SIZEOF + (ENTITY_FIELD_SIZEOF << 1)) > sizeInternal, M_EMPTY, return, "entityCMD: read size more than buffer");

		TYPEOF_STRUCT(EntityInfo, entities_count)   entityNumber;
		TYPEOF_STRUCT(Entity, fields_count)         startFieldNumber;
		TYPEOF_STRUCT(Entity, fields_count)         len;
		readEntityFieldNumbersfromBuf(&entityNumber, &startFieldNumber, inputData, &Rpos);

		//read number of fields
		len = readFieldNumberFromBuf(&inputData[Rpos]);
		Rpos += ENTITY_FIELD_SIZEOF;

		readEntityFields(entityNumber, startFieldNumber, len, (outputData + Wpos), &entitySize, (maxOutBufferSize - Wpos));
		break;}

	/* **********************************************************************************************************************************
	 *  READ Values
	 */
	case READ_FIELD_VALUE: {
		//ENTITY_DBG_ASSERT_BUF( (Rpos + ENTITIES_SIZEOF + ENTITY_FIELD_SIZEOF) > sizeInternal, M_EMPTY, return, "entityCMD: read size more than buffer");

		TYPEOF_STRUCT(EntityInfo, entities_count)   entityNumber;
		TYPEOF_STRUCT(Entity, fields_count)         fieldNumber;
		readEntityFieldNumbersfromBuf(&entityNumber, &fieldNumber, inputData, &Rpos);

		readFieldValue(entityNumber, fieldNumber, (outputData + Wpos), &entitySize, (maxOutBufferSize - Wpos));
		break;}

	case READ_SEVERAL_VALUES: {
		entitySize = (sizeInternal - 1U);
		readSeveralFieldsValues((inputData + Rpos), (outputData + Wpos), &entitySize, (maxOutBufferSize - Wpos));
		break;}

	/* **********************************************************************************************************************************
	 *  WRITE Values
	 */
	case WRITE_FIELD_VALUE: {
		//ENTITY_DBG_ASSERT_BUF( (Rpos + ENTITIES_SIZEOF + ENTITY_FIELD_SIZEOF) > sizeInternal, M_EMPTY, return, "entityCMD: read size more than buffer");

		TYPEOF_STRUCT(EntityInfo, entities_count)   entityNumber;
		TYPEOF_STRUCT(Entity, fields_count)         fieldNumber;
		readEntityFieldNumbersfromBuf(&entityNumber, &fieldNumber, inputData, &Rpos);

		setFieldValue(entityNumber, fieldNumber, (inputData + Rpos), (sizeInternal - Rpos));
		break;}

	case WRITE_SEVERAL_VALUES: {
		entitySize = (sizeInternal - 1U);
		setSeveralFieldsValues((inputData + Rpos), (outputData + Wpos), &entitySize, (maxOutBufferSize - Wpos));
		break;}

	/* **********************************************************************************************************************************
	 *  WRITE/READ Values
	 */
	case READ_SEVERAL_VALUES_GLUED :
	case WRITE_SEVERAL_VALUES_GLUED: {
		proceedGluedValues((inputData + Rpos), (outputData + Wpos), &entitySize, (maxOutBufferSize - Wpos));
		break;}

	/* **********************************************************************************************************************************
	 * FLASH OPERATIONS (OPTIONAL)
	 */
	case ENTITY_FLASH_OPERATION: {
		break;}

	}

	(*size) = (Wpos + entitySize);
	UNUSED(ctx);
}

#endif /* C_ENTITY_FRAMEWORK_LIB_ENA */
