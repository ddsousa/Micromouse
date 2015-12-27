################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBDevice/USBSerial/USBCDC.cpp \
../libraries/USBDevice/USBSerial/USBSerial.cpp 

OBJS += \
./libraries/USBDevice/USBSerial/USBCDC.o \
./libraries/USBDevice/USBSerial/USBSerial.o 

CPP_DEPS += \
./libraries/USBDevice/USBSerial/USBCDC.d \
./libraries/USBDevice/USBSerial/USBSerial.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBDevice/USBSerial/%.o: ../libraries/USBDevice/USBSerial/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


