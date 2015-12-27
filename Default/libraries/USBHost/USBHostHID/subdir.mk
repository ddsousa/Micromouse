################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBHost/USBHostHID/USBHostKeyboard.cpp \
../libraries/USBHost/USBHostHID/USBHostMouse.cpp 

OBJS += \
./libraries/USBHost/USBHostHID/USBHostKeyboard.o \
./libraries/USBHost/USBHostHID/USBHostMouse.o 

CPP_DEPS += \
./libraries/USBHost/USBHostHID/USBHostKeyboard.d \
./libraries/USBHost/USBHostHID/USBHostMouse.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHostHID/%.o: ../libraries/USBHost/USBHostHID/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


