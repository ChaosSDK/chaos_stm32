################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/chaos_sdk/crc/crc16.c \
../Core/chaos_sdk/crc/crc32.c \
../Core/chaos_sdk/crc/crc64.c \
../Core/chaos_sdk/crc/crc8.c \
../Core/chaos_sdk/crc/crc_test.c 

C_DEPS += \
./Core/chaos_sdk/crc/crc16.d \
./Core/chaos_sdk/crc/crc32.d \
./Core/chaos_sdk/crc/crc64.d \
./Core/chaos_sdk/crc/crc8.d \
./Core/chaos_sdk/crc/crc_test.d 

OBJS += \
./Core/chaos_sdk/crc/crc16.o \
./Core/chaos_sdk/crc/crc32.o \
./Core/chaos_sdk/crc/crc64.o \
./Core/chaos_sdk/crc/crc8.o \
./Core/chaos_sdk/crc/crc_test.o 


# Each subdirectory must supply rules for building sources it contributes
Core/chaos_sdk/crc/%.o Core/chaos_sdk/crc/%.su Core/chaos_sdk/crc/%.cyclo: ../Core/chaos_sdk/crc/%.c Core/chaos_sdk/crc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/board_pkg" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/app_core" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/algorithms-in-c" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/byte_order" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/callback_container" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/callback_manager" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/convert" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/crc" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework/reader" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/my_ctype" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/my_ctype/runtime_cast" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/pool_container" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/preprocessor" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_dma" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_general" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_it" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/rscode" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/slip" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/smart_assert" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/callbacks" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/stm32_communicator" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/DWT" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-chaos_sdk-2f-crc

clean-Core-2f-chaos_sdk-2f-crc:
	-$(RM) ./Core/chaos_sdk/crc/crc16.cyclo ./Core/chaos_sdk/crc/crc16.d ./Core/chaos_sdk/crc/crc16.o ./Core/chaos_sdk/crc/crc16.su ./Core/chaos_sdk/crc/crc32.cyclo ./Core/chaos_sdk/crc/crc32.d ./Core/chaos_sdk/crc/crc32.o ./Core/chaos_sdk/crc/crc32.su ./Core/chaos_sdk/crc/crc64.cyclo ./Core/chaos_sdk/crc/crc64.d ./Core/chaos_sdk/crc/crc64.o ./Core/chaos_sdk/crc/crc64.su ./Core/chaos_sdk/crc/crc8.cyclo ./Core/chaos_sdk/crc/crc8.d ./Core/chaos_sdk/crc/crc8.o ./Core/chaos_sdk/crc/crc8.su ./Core/chaos_sdk/crc/crc_test.cyclo ./Core/chaos_sdk/crc/crc_test.d ./Core/chaos_sdk/crc/crc_test.o ./Core/chaos_sdk/crc/crc_test.su

.PHONY: clean-Core-2f-chaos_sdk-2f-crc

