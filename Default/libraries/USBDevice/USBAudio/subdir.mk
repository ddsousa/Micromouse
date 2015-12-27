################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBDevice/USBAudio/USBAudio.cpp 

OBJS += \
./libraries/USBDevice/USBAudio/USBAudio.o 

CPP_DEPS += \
./libraries/USBDevice/USBAudio/USBAudio.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBDevice/USBAudio/%.o: ../libraries/USBDevice/USBAudio/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


