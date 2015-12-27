################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/net/helloworld/udpclient/main.cpp 

OBJS += \
./libraries/tests/net/helloworld/udpclient/main.o 

CPP_DEPS += \
./libraries/tests/net/helloworld/udpclient/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/net/helloworld/udpclient/%.o: ../libraries/tests/net/helloworld/udpclient/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


