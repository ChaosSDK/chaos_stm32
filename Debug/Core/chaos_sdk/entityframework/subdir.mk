################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/chaos_sdk/entityframework/entity_cmd.c \
../Core/chaos_sdk/entityframework/entity_macro.c \
../Core/chaos_sdk/entityframework/entity_manager.c \
../Core/chaos_sdk/entityframework/entity_packet.c \
../Core/chaos_sdk/entityframework/entity_tests.c 

C_DEPS += \
./Core/chaos_sdk/entityframework/entity_cmd.d \
./Core/chaos_sdk/entityframework/entity_macro.d \
./Core/chaos_sdk/entityframework/entity_manager.d \
./Core/chaos_sdk/entityframework/entity_packet.d \
./Core/chaos_sdk/entityframework/entity_tests.d 

OBJS += \
./Core/chaos_sdk/entityframework/entity_cmd.o \
./Core/chaos_sdk/entityframework/entity_macro.o \
./Core/chaos_sdk/entityframework/entity_manager.o \
./Core/chaos_sdk/entityframework/entity_packet.o \
./Core/chaos_sdk/entityframework/entity_tests.o 


# Each subdirectory must supply rules for building sources it contributes
Core/chaos_sdk/entityframework/%.o Core/chaos_sdk/entityframework/%.su Core/chaos_sdk/entityframework/%.cyclo: ../Core/chaos_sdk/entityframework/%.c Core/chaos_sdk/entityframework/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/hash" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/board_pkg" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework/checker" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework/mail" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/board_pkg" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/app_core" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/algorithms-in-c" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/byte_order" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/callback_container" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/callback_manager" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/convert" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/crc" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/entityframework/reader" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/my_ctype" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/my_ctype/runtime_cast" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/pool_container" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/preprocessor" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_dma" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_general" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/raw_parser/raw_parser_it" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/rscode" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/slip" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/chaos_sdk/smart_assert" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/callbacks" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/stm32_communicator" -I"C:/Users/admin/Documents/STM32/f407ve_chaos_sdk/Core/DWT" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-chaos_sdk-2f-entityframework

clean-Core-2f-chaos_sdk-2f-entityframework:
	-$(RM) ./Core/chaos_sdk/entityframework/entity_cmd.cyclo ./Core/chaos_sdk/entityframework/entity_cmd.d ./Core/chaos_sdk/entityframework/entity_cmd.o ./Core/chaos_sdk/entityframework/entity_cmd.su ./Core/chaos_sdk/entityframework/entity_macro.cyclo ./Core/chaos_sdk/entityframework/entity_macro.d ./Core/chaos_sdk/entityframework/entity_macro.o ./Core/chaos_sdk/entityframework/entity_macro.su ./Core/chaos_sdk/entityframework/entity_manager.cyclo ./Core/chaos_sdk/entityframework/entity_manager.d ./Core/chaos_sdk/entityframework/entity_manager.o ./Core/chaos_sdk/entityframework/entity_manager.su ./Core/chaos_sdk/entityframework/entity_packet.cyclo ./Core/chaos_sdk/entityframework/entity_packet.d ./Core/chaos_sdk/entityframework/entity_packet.o ./Core/chaos_sdk/entityframework/entity_packet.su ./Core/chaos_sdk/entityframework/entity_tests.cyclo ./Core/chaos_sdk/entityframework/entity_tests.d ./Core/chaos_sdk/entityframework/entity_tests.o ./Core/chaos_sdk/entityframework/entity_tests.su

.PHONY: clean-Core-2f-chaos_sdk-2f-entityframework

