################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/stm32_printf/subdir.mk
-include Core/stm32_communicator/subdir.mk
-include Core/chos_sdk/smart_assert/subdir.mk
-include Core/chos_sdk/slip/subdir.mk
-include Core/chos_sdk/rscode/subdir.mk
-include Core/chos_sdk/raw_parser/raw_parser_it/subdir.mk
-include Core/chos_sdk/raw_parser/raw_parser_general/subdir.mk
-include Core/chos_sdk/raw_parser/raw_parser_dma/subdir.mk
-include Core/chos_sdk/raw_parser/subdir.mk
-include Core/chos_sdk/preprocessor/subdir.mk
-include Core/chos_sdk/pool_container/subdir.mk
-include Core/chos_sdk/my_ctype/runtime_cast/subdir.mk
-include Core/chos_sdk/my_ctype/subdir.mk
-include Core/chos_sdk/entityframework/reader/subdir.mk
-include Core/chos_sdk/entityframework/subdir.mk
-include Core/chos_sdk/crc/subdir.mk
-include Core/chos_sdk/convert/subdir.mk
-include Core/chos_sdk/callback_manager/subdir.mk
-include Core/chos_sdk/callback_container/subdir.mk
-include Core/chos_sdk/byte_order/subdir.mk
-include Core/chos_sdk/algorithms-in-c/subdir.mk
-include Core/chos_sdk/subdir.mk
-include Core/callbacks/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := f407ve_chos_sdk
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
f407ve_chos_sdk.elf \

MAP_FILES += \
f407ve_chos_sdk.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
f407ve_chos_sdk.list \


# All Target
all: main-build

# Main-build Target
main-build: f407ve_chos_sdk.elf secondary-outputs

# Tool invocations
f407ve_chos_sdk.elf f407ve_chos_sdk.map: $(OBJS) $(USER_OBJS) C:\Users\admin\Documents\STM32\f407ve_chos_sdk\STM32F407VETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-g++ -o "f407ve_chos_sdk.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\admin\Documents\STM32\f407ve_chos_sdk\STM32F407VETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="f407ve_chos_sdk.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -u _scanf_float -Wl,--start-group -lc -lm -lstdc++ -lsupc++ -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

f407ve_chos_sdk.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "f407ve_chos_sdk.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout f407ve_chos_sdk.elf f407ve_chos_sdk.list f407ve_chos_sdk.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
