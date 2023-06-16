/*
 * entity_backup.c
 *
 *  Created on: 16 трав. 2023 р.
 *      Author: admin
 */

#include "entity_backup.h"
#include "entity_manager.h"
#include "entity_packet.h"
#include "HashCode.h"

static int compleateHeader(EN_BACKUP_HEADER_type* h1, EN_BACKUP_HEADER_type* h2)
{
	if((h1->SB != h2->SB) ||
			(h1->body_end_ptr != h2->body_end_ptr) ||
			(h1->backup_end_ptr != h2->backup_end_ptr) ||
			(h1->Entities_counts != h2->Entities_counts)) {
		return 0;
	}


	for(int i = 0; i < SIZEOF_STRUCT(EN_BACKUP_HEADER_type, sizes); ++i) {
		if(h1->sizes[i] != h2->sizes[i]) {
			return 0;
		}
	}

	for(int i = 0; i < SIZEOF_STRUCT(EN_BACKUP_HEADER_type, hash); ++i) {
		if(h1->hash[i] != h2->hash[i]) {
			return 0;
		}
	}

	return 1;
}


int entityWriteBackup(EN_BACKUP_CTX_type op, PREPROCESSOR_CTX_TYPE(ctx))
{
	//	typedef struct
	//	{
	//		u8 	SB;
	//		EN_BACKUP_POINTER_TYPE body_end_ptr;
	//		EN_BACKUP_POINTER_TYPE backup_end_ptr;
	//		u8 	sizes[16 + TYPE_ARRAY_LENGTH];
	//		u32 Entities_counts;
	//		u32 hash[2];
	//	} EN_BACKUP_HEADER_type;
	//
	//	EN_BACKUP_POINTER_TYPE addr = EN_BACKUP_BASE_ADDR;
	//	EN_BACKUP_HEADER_type calculated_head;
	//	EN_BACKUP_HEADER_type readed_head;
	//
	//	// read block
	//	{
	//		op.readCallback(SIZEOF_STRUCT(EN_BACKUP_HEADER_type, SB), &readed_head->SB, addr, ctx);
	//		addr += SIZEOF_STRUCT(EN_BACKUP_HEADER_type, SB);
	//	}
	return 0;
}

int entityReadBackup(EN_BACKUP_CTX_type op, PREPROCESSOR_CTX_TYPE(ctx))
{
	EN_BACKUP_HEADER_type readed_head;
	EN_BACKUP_HEADER_type calculated_head;

	EN_BACKUP_POINTER_TYPE addr = readHead(op.readCallback, EN_BACKUP_BASE_ADDR, &readed_head, op.read_ctx);

	if(addr != 0) {
		return ENTITY_ERROR;
	}

	if(calculateHead(&calculated_head) != ENTITY_OK) {
		return ENTITY_ERROR;
	}


	return ENTITY_OK;
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

int calculateHead(EN_BACKUP_HEADER_type* const head)
{
	u32 hash[2] = {0};
	reg size = 0;

	memset(head, 0, sizeof(EN_BACKUP_HEADER_type));

	// write start byte
	head->SB = EN_BACKUP_START_BYTE;

	// write sizes
	readEntitiesSizes(head->sizes, &size, SIZEOF_STRUCT(EN_BACKUP_HEADER_type, sizes));

	// write Entities count
	head->Entities_counts 		= entityInfo.entities_count;



	return ENTITY_OK;
}


EN_BACKUP_POINTER_TYPE readHead(const EN_BACKUP_OPERATIONS_type readCallback, EN_BACKUP_POINTER_TYPE offset, EN_BACKUP_HEADER_type* const head, PREPROCESSOR_CTX_TYPE(read_ctx))
{
	// head - read block ---------------------------------------------------------
#define EN_READ_OP(field)\
		readCallback(SIZEOF_STRUCT(EN_BACKUP_HEADER_type, field), &head->field, offset, read_ctx);\
		offset += SIZEOF_STRUCT(EN_BACKUP_HEADER_type, field);

	EN_READ_OP(SB);
	EN_READ_OP(body_end_ptr);
	EN_READ_OP(backup_end_ptr);
	EN_READ_OP(sizes);
	EN_READ_OP(Entities_counts);
	EN_READ_OP(hash);

#undef EN_READ_OP
	return offset;
}

