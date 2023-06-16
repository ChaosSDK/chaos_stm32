/*
 * entity_checker.c
 *
 *  Created on: 16 трав. 2023 р.
 *      Author: admin
 */

#include "entity_checker.h"


#ifdef C_ENTITY_FRAMEWORK_LIB_ENA
#include "entity_manager.h"
#include "smart_assert.h"

int check_predicate(reg entityNumber, Entity* entity, reg fieldNumber, EntityField* field, void* val, PREPROCESSOR_CTX_TYPE(ctx))
{
	M_Assert_WarningSaveCheck(
			(entity == NULL) ||
			(field == NULL) ||
			(val == NULL), M_EMPTY, {
					goto error;
	}, "check_predicate: no valid data");

	M_Assert_WarningSaveCheck((field->type == VOID_TYPE || field->type > (TYPE_ARRAY_LENGTH - 1)), M_EMPTY, {
			goto error;
	}, "check_predicate: undefined type!!!");

#ifdef USE_ENTITY_REGISTER
	M_Assert_WarningSaveCheck((field->bitFlags & ENTITY_REGISTER_MSK) && (field->type != REG_TYPE || field->type != SREG_TYPE), M_EMPTY, {
			goto error;
	}, "check_predicate: with ENTITY_REGISTER_MSK flag must be REG_TYPE or SREG_TYPE types only!!!");
#endif /* USE_ENTITY_REGISTER */


#ifdef USE_ENTITY_POINTER
	const reg pointerLen = (field->bitFlags & ENTITY_POINTER_MSK) ? sizeof(reg) : getMYCTypeLen(field->type);
#else
	const reg pointerLen = getMYCTypeLen(type);
#endif /* USE_ENTITY_POINTER */

	const reg dataLen = getMYCTypeLen(field->type);

	M_Assert_WarningSaveCheck(
			(( pointerLen > sizeof(reg) || (field->bitFlags & ENTITY_REGISTER_MSK)) &&
					( (reg)val & (sizeof(reg) - 1) 			)), M_EMPTY, {
							goto error;
	}, "check_predicate: Pointer alignment error!!!");


#ifdef USE_ENTITY_POINTER

	if(field->bitFlags & ENTITY_POINTER_MSK) {
		const void* reg_ptr = (const void*) (* REG_TYPE_DC(val));

		M_Assert_WarningSaveCheck(
				(( dataLen > sizeof(reg) ) &&
						( (reg)reg_ptr & (sizeof(reg) - 1) 			)), M_EMPTY, {
								goto error;
		}, "check_predicate: Data alignment error!!!");
	}

#endif /* USE_ENTITY_POINTER */


	UNUSED(ctx);
	return 0;

	error:
	{
		PREPROCESSOR_CTX_GET(ctx,
				int * const err);
		++(*err);
		M_Assert_Warning(M_ALWAYS, M_EMPTY, M_EMPTY, "error: E_num: %d, E_str: %.*s, F_num: %d, F_str: %.*s", entityNumber, ENTITY_DESCRIPTION_SIZE, entity->descr, fieldNumber, ENTITY_DESCRIPTION_SIZE, field->descr);
		return 0;
	}
}

int checkEntities(void)
{
	int err = 0;

	if(foreachEntities(check_predicate, PREPROCESSOR_CTX_CAPTURE({&err})) == ENTITY_ERROR) {
		++err;
	}

	return err;
}


#endif /* C_ENTITY_FRAMEWORK_LIB_ENA */




