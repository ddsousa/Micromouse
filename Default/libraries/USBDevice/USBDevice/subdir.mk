################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/USBDevice/USBDevice/USBDevice.cpp \
../libraries/USBDevice/USBDevice/USBHAL_KL25Z.cpp \
../libraries/USBDevice/USBDevice/USBHAL_LPC11U.cpp \
../libraries/USBDevice/USBDevice/USBHAL_LPC17.cpp \
../libraries/USBDevice/USBDevice/USBHAL_LPC40.cpp \
../libraries/USBDevice/USBDevice/USBHAL_Maxim.cpp \
../libraries/USBDevice/USBDevice/USBHAL_RZ_A1H.cpp \
../libraries/USBDevice/USBDevice/USBHAL_STM32F4.cpp 

OBJS += \
./libraries/USBDevice/USBDevice/USBDevice.o \
./libraries/USBDevice/USBDevice/USBHAL_KL25Z.o \
./libraries/USBDevice/USBDevice/USBHAL_LPC11U.o \
./libraries/USBDevice/USBDevice/USBHAL_LPC17.o \
./libraries/USBDevice/USBDevice/USBHAL_LPC40.o \
./libraries/USBDevice/USBDevice/USBHAL_Maxim.o \
./libraries/USBDevice/USBDevice/USBHAL_RZ_A1H.o \
./libraries/USBDevice/USBDevice/USBHAL_STM32F4.o 

CPP_DEPS += \
./libraries/USBDevice/USBDevice/USBDevice.d \
./libraries/USBDevice/USBDevice/USBHAL_KL25Z.d \
./libraries/USBDevice/USBDevice/USBHAL_LPC11U.d \
./libraries/USBDevice/USBDevice/USBHAL_LPC17.d \
./libraries/USBDevice/USBDevice/USBHAL_LPC40.d \
./libraries/USBDevice/USBDevice/USBHAL_Maxim.d \
./libraries/USBDevice/USBDevice/USBHAL_RZ_A1H.d \
./libraries/USBDevice/USBDevice/USBHAL_STM32F4.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/USBDevice/USBDevice/%.o: ../libraries/USBDevice/USBDevice/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


