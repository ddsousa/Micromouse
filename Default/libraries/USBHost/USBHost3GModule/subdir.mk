################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBHost/USBHost3GModule/WANDongle.cpp \
../libraries/USBHost/USBHost3GModule/WANDongleSerialPort.cpp 

OBJS += \
./libraries/USBHost/USBHost3GModule/WANDongle.o \
./libraries/USBHost/USBHost3GModule/WANDongleSerialPort.o 

CPP_DEPS += \
./libraries/USBHost/USBHost3GModule/WANDongle.d \
./libraries/USBHost/USBHost3GModule/WANDongleSerialPort.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHost3GModule/%.o: ../libraries/USBHost/USBHost3GModule/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


