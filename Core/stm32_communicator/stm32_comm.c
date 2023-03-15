/*
 * stm32_comm.c
 *
 *  Created on: Mar 15, 2023
 *      Author: admin
 */
#include "main.h"
#include "stm32_comm.h"
#include "comm_workers.h"

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

	HAL_UART_Receive_IT(&huart1, &comm.receiveByte, 1);
	return state;
}


void proceedIncommingMessage(void)
{
	// move to cash--------------------------------------------------------------
	const RawParser_Frame_t* const Rxframe = RawParser_dma_proceed(&comm.rawparser);
	u8* const input_data 	= Rxframe->data;
	reg input_size 			= Rxframe->size;
	const u8 cmd_id 		= input_data[0];

	// do logic ------------------------------------------------------------------
	HAL_UART_Receive_IT(&huart1, &comm.receiveByte, 1);

	if((Rxframe == NULL) || (input_size == 0)) {
		return;
	}

	if(!CallbackManager_proceed(&comm.manager, cmd_id, input_data, comm.outputData, &input_size, D_RAW_P_TX_BUF_SIZE)) {
		return;
	}

	if(input_size == 0) {
		return;
	}

	const RawParser_Frame_t* const Txframe = RawParser_dma_shieldFrame(&comm.rawparser, comm.outputData, input_size);
	HAL_UART_Transmit(&huart1, Txframe->data, Txframe->size, 10000);
}

