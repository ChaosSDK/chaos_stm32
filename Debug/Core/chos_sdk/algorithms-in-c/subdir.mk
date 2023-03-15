################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/chos_sdk/algorithms-in-c/BinarySearchTree.c \
../Core/chos_sdk/algorithms-in-c/DisjointSet.c \
../Core/chos_sdk/algorithms-in-c/DoublyLinkedList.c \
../Core/chos_sdk/algorithms-in-c/EdgeListGraph.c \
../Core/chos_sdk/algorithms-in-c/Graph.c \
../Core/chos_sdk/algorithms-in-c/GraphReader.c \
../Core/chos_sdk/algorithms-in-c/HashCode.c \
../Core/chos_sdk/algorithms-in-c/IntegerSequence.c \
../Core/chos_sdk/algorithms-in-c/IntrusiveLinkedList.c \
../Core/chos_sdk/algorithms-in-c/SinglyLinkedList.c \
../Core/chos_sdk/algorithms-in-c/StopWatch.c \
../Core/chos_sdk/algorithms-in-c/SymbolTable.c \
../Core/chos_sdk/algorithms-in-c/exception.c 

C_DEPS += \
./Core/chos_sdk/algorithms-in-c/BinarySearchTree.d \
./Core/chos_sdk/algorithms-in-c/DisjointSet.d \
./Core/chos_sdk/algorithms-in-c/DoublyLinkedList.d \
./Core/chos_sdk/algorithms-in-c/EdgeListGraph.d \
./Core/chos_sdk/algorithms-in-c/Graph.d \
./Core/chos_sdk/algorithms-in-c/GraphReader.d \
./Core/chos_sdk/algorithms-in-c/HashCode.d \
./Core/chos_sdk/algorithms-in-c/IntegerSequence.d \
./Core/chos_sdk/algorithms-in-c/IntrusiveLinkedList.d \
./Core/chos_sdk/algorithms-in-c/SinglyLinkedList.d \
./Core/chos_sdk/algorithms-in-c/StopWatch.d \
./Core/chos_sdk/algorithms-in-c/SymbolTable.d \
./Core/chos_sdk/algorithms-in-c/exception.d 

OBJS += \
./Core/chos_sdk/algorithms-in-c/BinarySearchTree.o \
./Core/chos_sdk/algorithms-in-c/DisjointSet.o \
./Core/chos_sdk/algorithms-in-c/DoublyLinkedList.o \
./Core/chos_sdk/algorithms-in-c/EdgeListGraph.o \
./Core/chos_sdk/algorithms-in-c/Graph.o \
./Core/chos_sdk/algorithms-in-c/GraphReader.o \
./Core/chos_sdk/algorithms-in-c/HashCode.o \
./Core/chos_sdk/algorithms-in-c/IntegerSequence.o \
./Core/chos_sdk/algorithms-in-c/IntrusiveLinkedList.o \
./Core/chos_sdk/algorithms-in-c/SinglyLinkedList.o \
./Core/chos_sdk/algorithms-in-c/StopWatch.o \
./Core/chos_sdk/algorithms-in-c/SymbolTable.o \
./Core/chos_sdk/algorithms-in-c/exception.o 


# Each subdirectory must supply rules for building sources it contributes
Core/chos_sdk/algorithms-in-c/%.o Core/chos_sdk/algorithms-in-c/%.su Core/chos_sdk/algorithms-in-c/%.cyclo: ../Core/chos_sdk/algorithms-in-c/%.c Core/chos_sdk/algorithms-in-c/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/callbacks" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/stm32_communicator" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/entityframework/reader" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/my_ctype/runtime_cast" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_dma" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_general" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser/raw_parser_it" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/algorithms-in-c" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/byte_order" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/callback_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/callback_manager" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/convert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/crc" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/my_ctype" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/pool_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/preprocessor" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/raw_parser" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/rscode" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/slip" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chos_sdk/smart_assert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/DWT" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-chos_sdk-2f-algorithms-2d-in-2d-c

clean-Core-2f-chos_sdk-2f-algorithms-2d-in-2d-c:
	-$(RM) ./Core/chos_sdk/algorithms-in-c/BinarySearchTree.cyclo ./Core/chos_sdk/algorithms-in-c/BinarySearchTree.d ./Core/chos_sdk/algorithms-in-c/BinarySearchTree.o ./Core/chos_sdk/algorithms-in-c/BinarySearchTree.su ./Core/chos_sdk/algorithms-in-c/DisjointSet.cyclo ./Core/chos_sdk/algorithms-in-c/DisjointSet.d ./Core/chos_sdk/algorithms-in-c/DisjointSet.o ./Core/chos_sdk/algorithms-in-c/DisjointSet.su ./Core/chos_sdk/algorithms-in-c/DoublyLinkedList.cyclo ./Core/chos_sdk/algorithms-in-c/DoublyLinkedList.d ./Core/chos_sdk/algorithms-in-c/DoublyLinkedList.o ./Core/chos_sdk/algorithms-in-c/DoublyLinkedList.su ./Core/chos_sdk/algorithms-in-c/EdgeListGraph.cyclo ./Core/chos_sdk/algorithms-in-c/EdgeListGraph.d ./Core/chos_sdk/algorithms-in-c/EdgeListGraph.o ./Core/chos_sdk/algorithms-in-c/EdgeListGraph.su ./Core/chos_sdk/algorithms-in-c/Graph.cyclo ./Core/chos_sdk/algorithms-in-c/Graph.d ./Core/chos_sdk/algorithms-in-c/Graph.o ./Core/chos_sdk/algorithms-in-c/Graph.su ./Core/chos_sdk/algorithms-in-c/GraphReader.cyclo ./Core/chos_sdk/algorithms-in-c/GraphReader.d ./Core/chos_sdk/algorithms-in-c/GraphReader.o ./Core/chos_sdk/algorithms-in-c/GraphReader.su ./Core/chos_sdk/algorithms-in-c/HashCode.cyclo ./Core/chos_sdk/algorithms-in-c/HashCode.d ./Core/chos_sdk/algorithms-in-c/HashCode.o ./Core/chos_sdk/algorithms-in-c/HashCode.su ./Core/chos_sdk/algorithms-in-c/IntegerSequence.cyclo ./Core/chos_sdk/algorithms-in-c/IntegerSequence.d ./Core/chos_sdk/algorithms-in-c/IntegerSequence.o ./Core/chos_sdk/algorithms-in-c/IntegerSequence.su ./Core/chos_sdk/algorithms-in-c/IntrusiveLinkedList.cyclo ./Core/chos_sdk/algorithms-in-c/IntrusiveLinkedList.d ./Core/chos_sdk/algorithms-in-c/IntrusiveLinkedList.o ./Core/chos_sdk/algorithms-in-c/IntrusiveLinkedList.su ./Core/chos_sdk/algorithms-in-c/SinglyLinkedList.cyclo ./Core/chos_sdk/algorithms-in-c/SinglyLinkedList.d ./Core/chos_sdk/algorithms-in-c/SinglyLinkedList.o ./Core/chos_sdk/algorithms-in-c/SinglyLinkedList.su ./Core/chos_sdk/algorithms-in-c/StopWatch.cyclo ./Core/chos_sdk/algorithms-in-c/StopWatch.d ./Core/chos_sdk/algorithms-in-c/StopWatch.o ./Core/chos_sdk/algorithms-in-c/StopWatch.su ./Core/chos_sdk/algorithms-in-c/SymbolTable.cyclo ./Core/chos_sdk/algorithms-in-c/SymbolTable.d ./Core/chos_sdk/algorithms-in-c/SymbolTable.o ./Core/chos_sdk/algorithms-in-c/SymbolTable.su ./Core/chos_sdk/algorithms-in-c/exception.cyclo ./Core/chos_sdk/algorithms-in-c/exception.d ./Core/chos_sdk/algorithms-in-c/exception.o ./Core/chos_sdk/algorithms-in-c/exception.su

.PHONY: clean-Core-2f-chos_sdk-2f-algorithms-2d-in-2d-c

