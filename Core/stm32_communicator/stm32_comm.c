/*
 * stm32_comm.c
 *
 *  Created on: Mar 15, 2023
 *      Author: admin
 */
#include "main.h"
#include "stm32_comm.h"
#include "comm_workers.h"
#include "entity_cmd.h"
#include "board_pkg.h"

Communicator_t comm;
extern UART_HandleTypeDef huart1;

int init_stm32_communicator(void)
{
	int state = rawParser_dma_init(&comm.rawparser, 0x1A);
	if(state != D_RAW_P_OK) {
		return D_RAW_P_ERROR;
	}

	// init callback manager
	CallbackManager_init(&comm.manager);
	CallbackManager_addWorker(&comm.manager, 0x00, ping_worker, NULL);
	CallbackManager_addWorker(&comm.manager, 0xF0, entityCMD, NULL);

	HAL_UART_Receive_IT(&huart1, &comm.receiveByte, 1);
	return state;
}


void proceedIncommingMessage(void)
{
	HAL_UART_Receive_IT(&huart1, &comm.receiveByte, 1);

	// move to cash--------------------------------------------------------------
	const RawParser_Frame_t* const Rxframe = RawParser_dma_proceed(&comm.rawparser);
	u8* const input_data 	= Rxframe->data;
	reg input_size 			= Rxframe->size;

//	if(input_size == 0) {
//		return;
//	}

	const boards_t* const board_entry_internal = board_entry;

	const u8 bid 		= input_data[0];
	const u8 cmd_id 	= input_data[1];

	// do logic ------------------------------------------------------------------

	M_Assert_Break(((Rxframe == NULL) || (input_data == NULL) || (board_entry_internal == NULL)), M_EMPTY, return, "proceedIncommingMessage: No valid descriptors");

//	// check input size and board id
	if((input_size < 2U) || (bid != board_entry_internal->boardId)) {
		return;
	}

	// call worker
	input_size -= 2;
	if(!CallbackManager_proceed(&comm.manager, cmd_id, &input_data[2], &comm.outputData[2], &input_size, (D_RAW_P_TX_BUF_SIZE - 2U))) {
		input_size = 0;
	}

//	// check if worker want to send packet
	if(input_size == 0) {
		return;
	}

	comm.outputData[0] = bid;
	comm.outputData[1] = cmd_id;

	const RawParser_Frame_t* const Txframe = RawParser_dma_shieldFrame(&comm.rawparser, comm.outputData, (input_size + 2));
	HAL_UART_Transmit(&huart1, Txframe->data, Txframe->size, 1000);
}

