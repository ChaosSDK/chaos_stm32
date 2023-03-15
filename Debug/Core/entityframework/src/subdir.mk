################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/entityframework/src/entity_error_handler.c \
../Core/entityframework/src/entity_flash_writer.c \
../Core/entityframework/src/entity_manager.c \
../Core/entityframework/src/entity_parser.c \
../Core/entityframework/src/entity_types.c 

C_DEPS += \
./Core/entityframework/src/entity_error_handler.d \
./Core/entityframework/src/entity_flash_writer.d \
./Core/entityframework/src/entity_manager.d \
./Core/entityframework/src/entity_parser.d \
./Core/entityframework/src/entity_types.d 

OBJS += \
./Core/entityframework/src/entity_error_handler.o \
./Core/entityframework/src/entity_flash_writer.o \
./Core/entityframework/src/entity_manager.o \
./Core/entityframework/src/entity_parser.o \
./Core/entityframework/src/entity_types.o 


# Each subdirectory must supply rules for building sources it contributes
Core/entityframework/src/%.o Core/entityframework/src/%.su: ../Core/entityframework/src/%.c Core/entityframework/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/callbacks" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/entityframework/reader" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/my_ctype/runtime_cast" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_dma" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_general" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_it" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/algorithms-in-c" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/byte_order" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/callback_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/callback_manager" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/convert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/crc" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/my_ctype" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/pool_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/preprocessor" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/rscode" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/slip" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/smart_assert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/entityframework/src" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/DWT" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/kbus" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-entityframework-2f-src

clean-Core-2f-entityframework-2f-src:
	-$(RM) ./Core/entityframework/src/entity_error_handler.d ./Core/entityframework/src/entity_error_handler.o ./Core/entityframework/src/entity_error_handler.su ./Core/entityframework/src/entity_flash_writer.d ./Core/entityframework/src/entity_flash_writer.o ./Core/entityframework/src/entity_flash_writer.su ./Core/entityframework/src/entity_manager.d ./Core/entityframework/src/entity_manager.o ./Core/entityframework/src/entity_manager.su ./Core/entityframework/src/entity_parser.d ./Core/entityframework/src/entity_parser.o ./Core/entityframework/src/entity_parser.su ./Core/entityframework/src/entity_types.d ./Core/entityframework/src/entity_types.o ./Core/entityframework/src/entity_types.su

.PHONY: clean-Core-2f-entityframework-2f-src

