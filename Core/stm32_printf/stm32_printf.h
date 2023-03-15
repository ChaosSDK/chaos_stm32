/*
 * stm32_printf.h
 *
 *  Created on: Mar 14, 2023
 *      Author: admin
 */

#ifndef _STM32_PRINTF_H_
#define _STM32_PRINTF_H_ 1


#ifdef __GNUC__
#	define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
#	define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif /* __GNUC__ */


PUTCHAR_PROTOTYPE;


#endif /* _STM32_PRINTF_H_ */
