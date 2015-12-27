################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/rpc/Arguments.cpp \
../libraries/rpc/RPCFunction.cpp \
../libraries/rpc/parse_pins.cpp \
../libraries/rpc/rpc.cpp 

OBJS += \
./libraries/rpc/Arguments.o \
./libraries/rpc/RPCFunction.o \
./libraries/rpc/parse_pins.o \
./libraries/rpc/rpc.o 

CPP_DEPS += \
./libraries/rpc/Arguments.d \
./libraries/rpc/RPCFunction.d \
./libraries/rpc/parse_pins.d \
./libraries/rpc/rpc.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/rpc/%.o: ../libraries/rpc/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


