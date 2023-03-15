################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/chos_sdk/entityframework/entity_cmd.c \
../Core/chos_sdk/entityframework/entity_macro.c \
../Core/chos_sdk/entityframework/entity_mail_service.c \
../Core/chos_sdk/entityframework/entity_manager.c \
../Core/chos_sdk/entityframework/entity_packet.c \
../Core/chos_sdk/entityframework/entity_tests.c 

C_DEPS += \
./Core/chos_sdk/entityframework/entity_cmd.d \
./Core/chos_sdk/entityframework/entity_macro.d \
./Core/chos_sdk/entityframework/entity_mail_service.d \
./Core/chos_sdk/entityframework/entity_manager.d \
./Core/chos_sdk/entityframework/entity_packet.d \
./Core/chos_sdk/entityframework/entity_tests.d 

OBJS += \
./Core/chos_sdk/entityframework/entity_cmd.o \
./Core/chos_sdk/entityframework/entity_macro.o \
./Core/chos_sdk/entityframework/entity_mail_service.o \
./Core/chos_sdk/entityframework/entity_manager.o \
./Core/chos_sdk/entityframework/entity_packet.o \
./Core/chos_sdk/entityframework/entity_tests.o 


# Each subdirectory must supply rules for building sources it contributes
Core/chos_sdk/entityframework/%.o Core/chos_sdk/entityframework/%.su Core/chos_sdk/entityframework/%.cyclo: ../Core/chos_sdk/entityframework/%.c Core/chos_sdk/entityframework/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/callbacks" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/stm32_communicator" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/entityframework/reader" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/my_ctype/runtime_cast" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_dma" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_general" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_it" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/algorithms-in-c" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/byte_order" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/callback_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/callback_manager" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/convert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/crc" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/my_ctype" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/pool_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/preprocessor" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/rscode" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/slip" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/smart_assert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/DWT" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-chos_sdk-2f-entityframework

clean-Core-2f-chos_sdk-2f-entityframework:
	-$(RM) ./Core/chos_sdk/entityframework/entity_cmd.cyclo ./Core/chos_sdk/entityframework/entity_cmd.d ./Core/chos_sdk/entityframework/entity_cmd.o ./Core/chos_sdk/entityframework/entity_cmd.su ./Core/chos_sdk/entityframework/entity_macro.cyclo ./Core/chos_sdk/entityframework/entity_macro.d ./Core/chos_sdk/entityframework/entity_macro.o ./Core/chos_sdk/entityframework/entity_macro.su ./Core/chos_sdk/entityframework/entity_mail_service.cyclo ./Core/chos_sdk/entityframework/entity_mail_service.d ./Core/chos_sdk/entityframework/entity_mail_service.o ./Core/chos_sdk/entityframework/entity_mail_service.su ./Core/chos_sdk/entityframework/entity_manager.cyclo ./Core/chos_sdk/entityframework/entity_manager.d ./Core/chos_sdk/entityframework/entity_manager.o ./Core/chos_sdk/entityframework/entity_manager.su ./Core/chos_sdk/entityframework/entity_packet.cyclo ./Core/chos_sdk/entityframework/entity_packet.d ./Core/chos_sdk/entityframework/entity_packet.o ./Core/chos_sdk/entityframework/entity_packet.su ./Core/chos_sdk/entityframework/entity_tests.cyclo ./Core/chos_sdk/entityframework/entity_tests.d ./Core/chos_sdk/entityframework/entity_tests.o ./Core/chos_sdk/entityframework/entity_tests.su

.PHONY: clean-Core-2f-chos_sdk-2f-entityframework

