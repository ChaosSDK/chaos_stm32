/*
 * stm32_comm.h
 *
 *  Created on: Mar 15, 2023
 *      Author: admin
 */

#ifndef _STM32_COMM_H_
#define _STM32_COMM_H_

#include "rawparser_dma.h"
#include "callback_manager.h"

typedef struct {
	RawParser_dma_t rawparser;
	CallbackManager_t manager;

	u8 receiveByte;
	u8 outputData[D_RAW_P_TX_BUF_SIZE];

} Communicator_t;

extern Communicator_t comm;

int init_stm32_communicator(void);
void proceedIncommingMessage(void);

#endif /* _STM32_COMM_H_ */
