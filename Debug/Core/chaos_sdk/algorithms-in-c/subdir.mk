################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/chaos_sdk/algorithms-in-c/BinarySearchTree.c \
../Core/chaos_sdk/algorithms-in-c/DisjointSet.c \
../Core/chaos_sdk/algorithms-in-c/DoublyLinkedList.c \
../Core/chaos_sdk/algorithms-in-c/EdgeListGraph.c \
../Core/chaos_sdk/algorithms-in-c/Graph.c \
../Core/chaos_sdk/algorithms-in-c/GraphReader.c \
../Core/chaos_sdk/algorithms-in-c/HashCode.c \
../Core/chaos_sdk/algorithms-in-c/IntegerSequence.c \
../Core/chaos_sdk/algorithms-in-c/IntrusiveLinkedList.c \
../Core/chaos_sdk/algorithms-in-c/SinglyLinkedList.c \
../Core/chaos_sdk/algorithms-in-c/StopWatch.c \
../Core/chaos_sdk/algorithms-in-c/SymbolTable.c \
../Core/chaos_sdk/algorithms-in-c/exception.c 

C_DEPS += \
./Core/chaos_sdk/algorithms-in-c/BinarySearchTree.d \
./Core/chaos_sdk/algorithms-in-c/DisjointSet.d \
./Core/chaos_sdk/algorithms-in-c/DoublyLinkedList.d \
./Core/chaos_sdk/algorithms-in-c/EdgeListGraph.d \
./Core/chaos_sdk/algorithms-in-c/Graph.d \
./Core/chaos_sdk/algorithms-in-c/GraphReader.d \
./Core/chaos_sdk/algorithms-in-c/HashCode.d \
./Core/chaos_sdk/algorithms-in-c/IntegerSequence.d \
./Core/chaos_sdk/algorithms-in-c/IntrusiveLinkedList.d \
./Core/chaos_sdk/algorithms-in-c/SinglyLinkedList.d \
./Core/chaos_sdk/algorithms-in-c/StopWatch.d \
./Core/chaos_sdk/algorithms-in-c/SymbolTable.d \
./Core/chaos_sdk/algorithms-in-c/exception.d 

OBJS += \
./Core/chaos_sdk/algorithms-in-c/BinarySearchTree.o \
./Core/chaos_sdk/algorithms-in-c/DisjointSet.o \
./Core/chaos_sdk/algorithms-in-c/DoublyLinkedList.o \
./Core/chaos_sdk/algorithms-in-c/EdgeListGraph.o \
./Core/chaos_sdk/algorithms-in-c/Graph.o \
./Core/chaos_sdk/algorithms-in-c/GraphReader.o \
./Core/chaos_sdk/algorithms-in-c/HashCode.o \
./Core/chaos_sdk/algorithms-in-c/IntegerSequence.o \
./Core/chaos_sdk/algorithms-in-c/IntrusiveLinkedList.o \
./Core/chaos_sdk/algorithms-in-c/SinglyLinkedList.o \
./Core/chaos_sdk/algorithms-in-c/StopWatch.o \
./Core/chaos_sdk/algorithms-in-c/SymbolTable.o \
./Core/chaos_sdk/algorithms-in-c/exception.o 


# Each subdirectory must supply rules for building sources it contributes
Core/chaos_sdk/algorithms-in-c/%.o Core/chaos_sdk/algorithms-in-c/%.su Core/chaos_sdk/algorithms-in-c/%.cyclo: ../Core/chaos_sdk/algorithms-in-c/%.c Core/chaos_sdk/algorithms-in-c/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu99 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -c -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/algorithms-in-c" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/byte_order" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/callback_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/callback_manager" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/convert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/crc" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/entityframework" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/entityframework/reader" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/my_ctype" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/my_ctype/runtime_cast" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/pool_container" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/preprocessor" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/raw_parser" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/raw_parser/raw_parser_dma" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/raw_parser/raw_parser_general" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/raw_parser/raw_parser_it" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/rscode" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/slip" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/chaos_sdk/smart_assert" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/callbacks" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/stm32_communicator" -I"C:/Users/admin/Documents/STM32/f407ve_chos_sdk/Core/DWT" -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-chaos_sdk-2f-algorithms-2d-in-2d-c

clean-Core-2f-chaos_sdk-2f-algorithms-2d-in-2d-c:
	-$(RM) ./Core/chaos_sdk/algorithms-in-c/BinarySearchTree.cyclo ./Core/chaos_sdk/algorithms-in-c/BinarySearchTree.d ./Core/chaos_sdk/algorithms-in-c/BinarySearchTree.o ./Core/chaos_sdk/algorithms-in-c/BinarySearchTree.su ./Core/chaos_sdk/algorithms-in-c/DisjointSet.cyclo ./Core/chaos_sdk/algorithms-in-c/DisjointSet.d ./Core/chaos_sdk/algorithms-in-c/DisjointSet.o ./Core/chaos_sdk/algorithms-in-c/DisjointSet.su ./Core/chaos_sdk/algorithms-in-c/DoublyLinkedList.cyclo ./Core/chaos_sdk/algorithms-in-c/DoublyLinkedList.d ./Core/chaos_sdk/algorithms-in-c/DoublyLinkedList.o ./Core/chaos_sdk/algorithms-in-c/DoublyLinkedList.su ./Core/chaos_sdk/algorithms-in-c/EdgeListGraph.cyclo ./Core/chaos_sdk/algorithms-in-c/EdgeListGraph.d ./Core/chaos_sdk/algorithms-in-c/EdgeListGraph.o ./Core/chaos_sdk/algorithms-in-c/EdgeListGraph.su ./Core/chaos_sdk/algorithms-in-c/Graph.cyclo ./Core/chaos_sdk/algorithms-in-c/Graph.d ./Core/chaos_sdk/algorithms-in-c/Graph.o ./Core/chaos_sdk/algorithms-in-c/Graph.su ./Core/chaos_sdk/algorithms-in-c/GraphReader.cyclo ./Core/chaos_sdk/algorithms-in-c/GraphReader.d ./Core/chaos_sdk/algorithms-in-c/GraphReader.o ./Core/chaos_sdk/algorithms-in-c/GraphReader.su ./Core/chaos_sdk/algorithms-in-c/HashCode.cyclo ./Core/chaos_sdk/algorithms-in-c/HashCode.d ./Core/chaos_sdk/algorithms-in-c/HashCode.o ./Core/chaos_sdk/algorithms-in-c/HashCode.su ./Core/chaos_sdk/algorithms-in-c/IntegerSequence.cyclo ./Core/chaos_sdk/algorithms-in-c/IntegerSequence.d ./Core/chaos_sdk/algorithms-in-c/IntegerSequence.o ./Core/chaos_sdk/algorithms-in-c/IntegerSequence.su ./Core/chaos_sdk/algorithms-in-c/IntrusiveLinkedList.cyclo ./Core/chaos_sdk/algorithms-in-c/IntrusiveLinkedList.d ./Core/chaos_sdk/algorithms-in-c/IntrusiveLinkedList.o ./Core/chaos_sdk/algorithms-in-c/IntrusiveLinkedList.su ./Core/chaos_sdk/algorithms-in-c/SinglyLinkedList.cyclo ./Core/chaos_sdk/algorithms-in-c/SinglyLinkedList.d ./Core/chaos_sdk/algorithms-in-c/SinglyLinkedList.o ./Core/chaos_sdk/algorithms-in-c/SinglyLinkedList.su ./Core/chaos_sdk/algorithms-in-c/StopWatch.cyclo ./Core/chaos_sdk/algorithms-in-c/StopWatch.d ./Core/chaos_sdk/algorithms-in-c/StopWatch.o ./Core/chaos_sdk/algorithms-in-c/StopWatch.su ./Core/chaos_sdk/algorithms-in-c/SymbolTable.cyclo ./Core/chaos_sdk/algorithms-in-c/SymbolTable.d ./Core/chaos_sdk/algorithms-in-c/SymbolTable.o ./Core/chaos_sdk/algorithms-in-c/SymbolTable.su ./Core/chaos_sdk/algorithms-in-c/exception.cyclo ./Core/chaos_sdk/algorithms-in-c/exception.d ./Core/chaos_sdk/algorithms-in-c/exception.o ./Core/chaos_sdk/algorithms-in-c/exception.su

.PHONY: clean-Core-2f-chaos_sdk-2f-algorithms-2d-in-2d-c

