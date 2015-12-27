################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBHost/USBHost/USBDeviceConnected.cpp \
../libraries/USBHost/USBHost/USBEndpoint.cpp \
../libraries/USBHost/USBHost/USBHALHost_LPC17.cpp \
../libraries/USBHost/USBHost/USBHALHost_RZ_A1.cpp \
../libraries/USBHost/USBHost/USBHost.cpp 

OBJS += \
./libraries/USBHost/USBHost/USBDeviceConnected.o \
./libraries/USBHost/USBHost/USBEndpoint.o \
./libraries/USBHost/USBHost/USBHALHost_LPC17.o \
./libraries/USBHost/USBHost/USBHALHost_RZ_A1.o \
./libraries/USBHost/USBHost/USBHost.o 

CPP_DEPS += \
./libraries/USBHost/USBHost/USBDeviceConnected.d \
./libraries/USBHost/USBHost/USBEndpoint.d \
./libraries/USBHost/USBHost/USBHALHost_LPC17.d \
./libraries/USBHost/USBHost/USBHALHost_RZ_A1.d \
./libraries/USBHost/USBHost/USBHost.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBHost/USBHost/%.o: ../libraries/USBHost/USBHost/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


