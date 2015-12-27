################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/mbed/portout/main.cpp 

OBJS += \
./libraries/tests/mbed/portout/main.o 

CPP_DEPS += \
./libraries/tests/mbed/portout/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/mbed/portout/%.o: ../libraries/tests/mbed/portout/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


