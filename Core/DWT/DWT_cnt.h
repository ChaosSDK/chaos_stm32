#ifndef __DWT_CNT_H__
#define __DWT_CNT_H__

#ifdef __cplusplus
 extern "C" {
#endif /* __cplusplus */

/******************************************************************************/
/* Connecting the header files of the modules used*/
#include "main.h"

//#define DWT_CONTROL *(volatile unsigned long *)0xE0001000
//#define SCB_DEMCR   *(volatile unsigned long *)0xE000EDFC

/******************************************************************************/
/* inline func */
__STATIC_INLINE void DWT_Init(void)
{
	CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk; // allowed to use counter
	DWT->CYCCNT = 0U;
	DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;   			// start the counter
}

__STATIC_INLINE void DWT_Clear(void)
{
	DWT->CYCCNT = 0U;
}

__STATIC_INLINE void DWT_Delay_us(const uint32_t us)
{
	const uint32_t us_count_tics =  us * (SystemCoreClock / 1000000U);
	DWT->CYCCNT = 0U;
	while(DWT->CYCCNT < us_count_tics);
}

__STATIC_INLINE void DWT_Delay_tics(const uint32_t tics)
{
	DWT->CYCCNT = 0U;
	while(DWT->CYCCNT < tics);
}


__STATIC_INLINE uint32_t DWT_GetTick(void)
{
	return DWT->CYCCNT;
}

__STATIC_INLINE uint32_t DWT_Get_us(void)
{
	return DWT->CYCCNT * (float)(1000000.0f / SystemCoreClock);
}

__STATIC_INLINE uint32_t DWT_Get_ms(void)
{
	return DWT->CYCCNT * (float)(1000.0f / SystemCoreClock);
}

__STATIC_INLINE uint32_t DWT_Get_s(void)
{
	return DWT->CYCCNT * (float)(1.0f / SystemCoreClock);
}

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* __DWT_CNT_H__ */
/*******************************  END OF FILE  ********************************/
