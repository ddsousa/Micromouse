################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBHost/USBHostSerial/USBHostSerial.cpp 

OBJS += \
./libraries/USBHost/USBHostSerial/USBHostSerial.o 

CPP_DEPS += \
./libraries/USBHost/USBHostSerial/USBHostSerial.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHostSerial/%.o: ../libraries/USBHost/USBHostSerial/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


