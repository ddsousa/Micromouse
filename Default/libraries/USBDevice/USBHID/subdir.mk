################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBDevice/USBHID/USBHID.cpp \
../libraries/USBDevice/USBHID/USBKeyboard.cpp \
../libraries/USBDevice/USBHID/USBMouse.cpp \
../libraries/USBDevice/USBHID/USBMouseKeyboard.cpp 

OBJS += \
./libraries/USBDevice/USBHID/USBHID.o \
./libraries/USBDevice/USBHID/USBKeyboard.o \
./libraries/USBDevice/USBHID/USBMouse.o \
./libraries/USBDevice/USBHID/USBMouseKeyboard.o 

CPP_DEPS += \
./libraries/USBDevice/USBHID/USBHID.d \
./libraries/USBDevice/USBHID/USBKeyboard.d \
./libraries/USBDevice/USBHID/USBMouse.d \
./libraries/USBDevice/USBHID/USBMouseKeyboard.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBDevice/USBHID/%.o: ../libraries/USBDevice/USBHID/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


