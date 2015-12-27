################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/mbed/digitalinout/main.cpp 

OBJS += \
./libraries/tests/mbed/digitalinout/main.o 

CPP_DEPS += \
./libraries/tests/mbed/digitalinout/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/mbed/digitalinout/%.o: ../libraries/tests/mbed/digitalinout/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


