################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/net/protocols/HTTPClient_HelloWorld/main.cpp 

OBJS += \
./libraries/tests/net/protocols/HTTPClient_HelloWorld/main.o 

CPP_DEPS += \
./libraries/tests/net/protocols/HTTPClient_HelloWorld/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/net/protocols/HTTPClient_HelloWorld/%.o: ../libraries/tests/net/protocols/HTTPClient_HelloWorld/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


