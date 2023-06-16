/*************************************************************************************************
 * @file		entity_atomic.h
 *
 * @brief		Interrupt blocking macros WARNING!!! ONLY STM32, if you use other platform change some macroces
 *
 * @version		v1.0
 * @date		17.10.2022
 * @author		Shpegun60
 ************************************************************************************************/
#ifndef ENTITY_ATOMIC_H
#define ENTITY_ATOMIC_H

#include "entity_port.h"

#if defined(C_ENTITY_FRAMEWORK_LIB_ENA) && defined(USE_ENTITY_ATOMIC)

#include "my_ctypes.h"

#ifdef ENTITY_ATOMIC_STM32
#	include "cmsis_gcc.h"
#
#   define ENTITY_ATOMIC_DISABLE_IRQ()                     __disable_irq()
#   define ENTITY_ATOMIC_ENABLE_IRQ()                      __enable_irq()
#   define ENTITY_ATOMIC_GET_IRQ_PRIMASK()                 __get_PRIMASK()
#   define ENTITY_ATOMIC_SET_IRQ_PRIMASK(priMask)          __set_PRIMASK((priMask))
#elif defined(ENTITY_ATOMIC_ESP32)
#   define ENTITY_ATOMIC_DISABLE_IRQ()
#   define ENTITY_ATOMIC_ENABLE_IRQ()
#   define ENTITY_ATOMIC_GET_IRQ_PRIMASK()                 0
#   define ENTITY_ATOMIC_SET_IRQ_PRIMASK(priMask)          UNUSED((priMask))
#else
#   define ENTITY_ATOMIC_DISABLE_IRQ()
#   define ENTITY_ATOMIC_ENABLE_IRQ()
#   define ENTITY_ATOMIC_GET_IRQ_PRIMASK()                 0
#   define ENTITY_ATOMIC_SET_IRQ_PRIMASK(priMask)          UNUSED((priMask))
#   error Unsupported platform for Entity Atomic, user must determine some atomic functions (defined upper)
#endif /* Atomic platform set */


STATIC_FORCEINLINE void __irqDis(const b flag)
{
    if (flag) {
        ENTITY_ATOMIC_DISABLE_IRQ();
    }
}

STATIC_FORCEINLINE void __irqEn(const b flag)
{
    if (flag) {
        ENTITY_ATOMIC_ENABLE_IRQ();
    }
}

STATIC_FORCEINLINE reg __irqDisGetPrimask(const b flag)
{
    reg result;
    if (flag) {
        result = ENTITY_ATOMIC_GET_IRQ_PRIMASK();
        ENTITY_ATOMIC_DISABLE_IRQ();
    }
    return result;
}

STATIC_FORCEINLINE void __irqSetPrimask(const b flag, const reg priMask)
{
    if (flag) {
        ENTITY_ATOMIC_SET_IRQ_PRIMASK(priMask);
    }
}


// block with a preliminary check of the need to prohibit and subsequent unconditional permission of interrupts
// if the condition is not met, the interrupt enable flag will not be changed
#define ATOMIC_BLOCK_FORCEON_COND(condition, expression)    		\
    do{                                                     		\
        const b _cond = condition;                                	\
        __irqDis(_cond);                                    		\
        expression;                                         		\
        __irqEn(_cond);                                     		\
    }while(0)

// block with a preliminary check of the need to prohibit
// if the condition is not met, the interrupt enable flag will not be changed
#define ATOMIC_BLOCK_RESTORATE_COND(condition, expression)  		\
    do{                                                     		\
        const b _cond = condition;                                	\
        const reg priMask = __irqDisGetPrimask(_cond);            	\
        expression;                                         		\
        __irqSetPrimask(_cond, priMask);                    		\
    }while(0)


// block with prohibition and subsequent unconditional interrupt enable
#define ATOMIC_BLOCK_FORCEON(expression)  	ATOMIC_BLOCK_FORCEON_COND(1, expression)

// block with prohibition and subsequent restoration of interrupts
#define ATOMIC_BLOCK_RESTORATE(expression)	ATOMIC_BLOCK_RESTORATE_COND(1, expression)


#endif /* defined(C_ENTITY_FRAMEWORK_LIB_ENA) && defined(USE_ENTITY_ATOMIC) */

#endif /* ENTITY_ATOMIC_H */
