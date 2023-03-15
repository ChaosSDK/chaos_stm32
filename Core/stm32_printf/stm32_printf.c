/*
 * stm32_printf.c
 *
 *  Created on: Mar 14, 2023
 *      Author: admin
 */
#include "main.h"
#include "stm32_printf.h"

extern UART_HandleTypeDef huart1;
PUTCHAR_PROTOTYPE
{
	HAL_UART_Transmit(&huart1, (uint8_t *)&ch, 1, HAL_MAX_DELAY);
	return ch;
}
