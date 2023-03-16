#include "board_pkg.h"
#include "entity_manager.h"
#include "smart_assert.h"

const boards_t* board_entry = NULL;

void entityBoardInit(void)
{
	reg board_entityNum = ENTITY_NUMBER_ERROR;
	reg fieldNumber = 0;

	int state = initEntity(&board_entityNum, 4, sizeof(boards_t), "BID ", 0, 0, NULL);
	M_Assert_BreakSaveCheck((state == ENTITY_ERROR), M_EMPTY, return, "entityBoardInit: initEntity Error");

	Entity* const entity = getEntityPointer(board_entityNum);
	M_Assert_BreakSaveCheck((entity == NULL), M_EMPTY, return, "entityBoardInit: entity is null");

	boards_t* entry = getVoidPointer(board_entityNum);
	M_Assert_BreakSaveCheck((entry == NULL), M_EMPTY, return, "entityBoardInit: entry is null");

	initField(entity, &fieldNumber, (ENTITY_READ_ONLY_MSK), offsetof(boards_t, boardId), 	UINT8_TYPE, 	"B   ", &entry->boardId);
	initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, major), 		UINT8_TYPE, 	"VerH", &entry->major);
	initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, minor), 		UINT8_TYPE, 	"VerM", &entry->minor);
	initField(entity, &fieldNumber, (ENTITY_EMPTY_FLAG), offsetof(boards_t, patch), 		UINT16_TYPE, 	"VerL", &entry->patch);

	entry->boardId 	= INIT_BOARD_ID;
	entry->major 	= BOARD_MAJOR;
	entry->minor 	= BOARD_MINOR;
	entry->patch	= BOARD_PATCHLEVEL;
	board_entry = entry;
}
