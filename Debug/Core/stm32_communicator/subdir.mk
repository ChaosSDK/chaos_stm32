################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/stm32_communicator/comm_workers.c \
../Core/stm32_communicator/stm32_comm.c 

C_DEPS += \
./Core/stm32_communicator/comm_workers.d \
./Core/stm32_communicator/stm32_comm.d 

OBJS += \
./Core/stm32_communicator/comm_workers.o \
./Core/stm32_communicator/stm32_comm.o 


# Each subdirectory must supply rules for building sources it contributes
Core/stm32_communicator/%.o Core/stm32_communicator/%.su Core/stm32_communicator/%.cyclo: ../Core/stm32_communicator/%.c Core/stm32_communicator/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/hash" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/board_pkg" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework/checker" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework/mail" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/board_pkg" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/app_core" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/algorithms-in-c" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/byte_order" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/callback_container" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/callback_manager" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/convert" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/crc" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework/reader" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/my_ctype" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/my_ctype/runtime_cast" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/pool_container" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/preprocessor" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_dma" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_general" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_it" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/rscode" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/slip" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/smart_assert" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/callbacks" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/stm32_communicator" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/DWT" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-stm32_communicator

clean-Core-2f-stm32_communicator:
	-$(RM) ./Core/stm32_communicator/comm_workers.cyclo ./Core/stm32_communicator/comm_workers.d ./Core/stm32_communicator/comm_workers.o ./Core/stm32_communicator/comm_workers.su ./Core/stm32_communicator/stm32_comm.cyclo ./Core/stm32_communicator/stm32_comm.d ./Core/stm32_communicator/stm32_comm.o ./Core/stm32_communicator/stm32_comm.su

.PHONY: clean-Core-2f-stm32_communicator

