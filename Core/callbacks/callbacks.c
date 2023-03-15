#include "callbacks.h"
#include "stm32_comm.h"



// uart callback
void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
	if (huart->Instance == USART1) {

		RawParser_dma_receiveByte(&comm.rawparser, comm.receiveByte);
		HAL_UART_Receive_IT(huart, (uint8_t*) &comm.receiveByte, 1);
	}
}

// system milliseconds callback
void HAL_SYSTICK_Callback(void)
{

}


