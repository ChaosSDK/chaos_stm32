#include "board_pkg.h"
#include "entity_manager.h"
#include "smart_assert.h"

const boards_t* board_entry = NULL;

void entityBoardInit(void)
{
	reg board_entityNum = ENTITY_NUMBER_ERROR;
	reg fieldNumber = 0;

	int state = initEntity(&board_entityNum, 17, sizeof(boards_t), "BID ", 0, 0, NULL);
	M_Assert_BreakSaveCheck((state == ENTITY_ERROR), M_EMPTY, return, "entityBoardInit: initEntity Error");

	Entity* const entity = getEntityPointer(board_entityNum);
	M_Assert_BreakSaveCheck((entity == NULL), M_EMPTY, return, "entityBoardInit: entity is null");

	boards_t* entry = getVoidPointer(board_entityNum);
	M_Assert_BreakSaveCheck((entry == NULL), M_EMPTY, return, "entityBoardInit: entry is null");

	initField(entity, &fieldNumber, (ENTITY_READ_ONLY_MSK), offsetof(boards_t, boardId), 	UINT8_TYPE, 	"B   ", &entry->boardId);
	initField(entity, &fieldNumber, (ENTITY_READ_ONLY_MSK), offsetof(boards_t, major), 		UINT8_TYPE, 	"VerH", &entry->major);
	initField(entity, &fieldNumber, (ENTITY_READ_ONLY_MSK), offsetof(boards_t, minor), 		UINT8_TYPE, 	"VerM", &entry->minor);
	initField(entity, &fieldNumber, (ENTITY_READ_ONLY_MSK), offsetof(boards_t, patch), 		UINT16_TYPE, 	"VerL", &entry->patch);

    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _1), UINT8_TYPE,                "F1", &entry->_1);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _2), UINT8_TYPE,                "F2", &entry->_2);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _3), UINT16_TYPE,               "F3", &entry->_3);
    //initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _4), UINT24_TYPE,               "F4", &entry->_4);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _5), UINT32_TYPE,               "F5", &entry->_5);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _6), UINT64_TYPE,               "F6", &entry->_6);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _7), CHAR_TYPE,                 "F7", &entry->_7);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _8), INT8_TYPE,                 "F8", &entry->_8);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _9), INT16_TYPE,                "F9", &entry->_9);
    //initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _10), INT24_TYPE,               "F10", &entry->_10);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _11), INT32_TYPE,               "F11", &entry->_11);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _12), INT64_TYPE,               "F12", &entry->_12);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _13), FLOAT_TYPE,               "F13", &entry->_13);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _14), DOUBLE_TYPE,              "F14", &entry->_14);
    //initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _15), LONG_DOUBLE_TYPE,         "F15", &entry->_15);
    initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _16), BOOL_TYPE,                "F16", &entry->_16);
    //initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _17), REG_TYPE,                 "F17", &entry->_17);
    //initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, _18), SREG_TYPE,                "F18", &entry->_18);

	entry->boardId 	= INIT_BOARD_ID;
	entry->major 	= BOARD_MAJOR;
	entry->minor 	= BOARD_MINOR;
	entry->patch	= BOARD_PATCHLEVEL;
	board_entry = entry;
}
