#include "main.h"
#include "app_core.h"

#include "stm32_comm.h"
#include "protocol_test.h"
#include "entity_manager.h"
#include "entity_checker.h"

#include "board_pkg.h"
#include "sha-256_test.h"


void app_main(void)
{
	int state = newEntities(5);
	M_Assert_BreakSaveCheck((state == ENTITY_ERROR), M_EMPTY, return, "app_main: error entity allocation");
	entityBoardInit();


	init_stm32_communicator();
	// protocolAllTest(44, 100, (TESTER_CRC | TESTER_ENDIAN | TESTER_CONVERT | TESTER_RAW_P_DMA | TESTER_REED_SOLOMON_ECC | TESTER_CALLBACK_MANAGER | TESTER_PULL_CONTAINER | TESTER_RAW_P_IT | TESTER_RAW_P_GEN));
	//protocolAllTest(44, 100, TESTER_ENDIAN | TESTER_CONVERT | TESTER_RAW_P_GEN |TESTER_RAW_P_IT | TESTER_RAW_P_DMA);


//	char rrr[16] = {};
//	u32 a = *((u32*)&rrr[3]);
//
//	if(a == 0) {
//		int b =0;
//	}

	checkEntities();

	/* Read MCU Id, 32-bit access */
	//u32 MCU_Id = DBGMCU->IDCODE;
	sha256_test();

	while(1) {
		proceedIncommingMessage();
		entityBoardProceed();
	}
}
