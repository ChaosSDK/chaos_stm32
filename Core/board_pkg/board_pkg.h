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

	//---------------------------------------------------------------------------------------------
    /* uni */ u8 _1; // do not check this type because void type is not exist, error type
    u8  _2;
    u16 _3;
    u24 _4;
    u32 _5;
    u64 _6;

    c8  _7;
    i8  _8;
    i16 _9;
    i24 _10;
    i32 _11;
    i64 _12;

    f32  _13;
    f64  _14;
    f128 _15; // platform depend type

    // bool type -------------------------
    b _16;

    // bus types defining (platform depend) ----------------------------------------------
    reg  _17;    // platform depend type
    sreg _18;   // platform depend type
    //------------------------------------------------------------------------------------

    u8 data[10];
    reg ptr;
} boards_t;

extern const boards_t* board_entry;

void entityBoardInit(void);

#endif /* BOARD_PKG_H_ */
