#ifndef BOARD_PKG_H_
#define BOARD_PKG_H_

#include "my_ctypes_def.h"

// software version controll ----------------------------------
#define BOARD_MAJOR            1
#define BOARD_MINOR            0
#define BOARD_PATCHLEVEL       0
//-----------------------------------------------------------

#define INIT_BOARD_ID 0x01

typedef struct {
	u8 boardId;

	u8 major;
	u8 minor;
	u16 patch;
} boards_t;

extern const boards_t* board_entry;

void entityBoardInit(void);

#endif /* BOARD_PKG_H_ */
