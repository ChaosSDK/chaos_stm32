/*
 * entity_backup.h
 *
 *  Created on: 16 трав. 2023 р.
 *      Author: admin
 */

#ifndef __ENTITY_BACKUP_H__
#define __ENTITY_BACKUP_H__

#include "entity_port.h"

#if defined(C_ENTITY_FRAMEWORK_LIB_ENA) && defined(USE_ENTITY_BACKUP_SERVICE)
#include "preprocessor_ctx.h"

#define EN_BACKUP_POINTER_TYPE u32

typedef void (* const EN_BACKUP_OPERATIONS_type)(reg size, void* data, EN_BACKUP_POINTER_TYPE start_addr, PREPROCESSOR_CTX_TYPE(ctx));
typedef const struct {
	EN_BACKUP_OPERATIONS_type readCallback;
	PREPROCESSOR_CTX_TYPE(read_ctx);
	EN_BACKUP_OPERATIONS_type writeCallback;
	PREPROCESSOR_CTX_TYPE(write_ctx);
} EN_BACKUP_CTX_type;


int entityWriteBackup(EN_BACKUP_CTX_type op, PREPROCESSOR_CTX_TYPE(ctx));

// ---------------------------------------------------------------------------------------------------------------------------

/*
 * memory map
 *
 */

// BACKUP HEADER ------------------------------------------------------------------------------------------------------------------------------------------------------------------
#define EN_BACKUP_BASE_ADDR 			0x00
#define EN_BACKUP_START_BYTE 			0x5BU

typedef struct
{
	/* 1 */u8 	SB;
	/* 5 */EN_BACKUP_POINTER_TYPE body_end_ptr;
	/* 6 */EN_BACKUP_POINTER_TYPE backup_end_ptr;
	/* 2 */u8 	sizes[16 + TYPE_ARRAY_LENGTH];
	/* 3 */u32 Entities_counts;
	/* 4 */u32 hash[2];
} EN_BACKUP_HEADER_type;

#define EN_BACKUP_SIZEOF_HEADER (SIZEOF_STRUCT(EN_BACKUP_HEADER_type, SB) + SIZEOF_STRUCT(EN_BACKUP_HEADER_type, body_end_ptr) + \
		SIZEOF_STRUCT(EN_BACKUP_HEADER_type, backup_end_ptr) + SIZEOF_STRUCT(EN_BACKUP_HEADER_type, sizes) + SIZEOF_STRUCT(EN_BACKUP_HEADER_type, Entities_counts) + SIZEOF_STRUCT(EN_BACKUP_HEADER_type, hash))


// BACKUP BODY ------------------------------------------------------------------------------------------------------------------------------------------------------------------
#define EN_BACKUP_BODY_BASE_ADDR (EN_BACKUP_BASE_ADDR + EN_BACKUP_SIZEOF_HEADER)

typedef struct
{
    char            descr[ENTITY_DESCRIPTION_SIZE];
    u32             fields_count;
} EN_BACKUP_ENTITY_type;

#define EN_BACKUP_SIZEOF_ENTITY (SIZEOF_STRUCT(EN_BACKUP_ENTITY_type, descr) + SIZEOF_STRUCT(EN_BACKUP_ENTITY_type, fields_count))


typedef struct
{
    u32     bitFlags;
    u32     shift;
    u8      type;
    char    descr[ENTITY_DESCRIPTION_SIZE];
    EN_BACKUP_POINTER_TYPE pointer_to_data;
} EN_BACKUP_FIELD_type;

#define EN_BACKUP_SIZEOF_FIELD (SIZEOF_STRUCT(EN_BACKUP_FIELD_type, bitFlags) + SIZEOF_STRUCT(EN_BACKUP_FIELD_type, shift) + SIZEOF_STRUCT(EN_BACKUP_FIELD_type, type) + SIZEOF_STRUCT(EN_BACKUP_FIELD_type, descr) + SIZEOF_STRUCT(EN_BACKUP_FIELD_type, pointer_to_data))
/*
 * .
 * .
 * .
 * .
 *
 */

int calculateHead(EN_BACKUP_HEADER_type* const head);
EN_BACKUP_POINTER_TYPE readHead(const EN_BACKUP_OPERATIONS_type readCallback, EN_BACKUP_POINTER_TYPE offset, EN_BACKUP_HEADER_type* const head, PREPROCESSOR_CTX_TYPE(read_ctx));


#endif /* defined(C_ENTITY_FRAMEWORK_LIB_ENA) && defined(USE_ENTITY_BACKUP_SERVICE) */


#endif /* __ENTITY_BACKUP_H__ */
