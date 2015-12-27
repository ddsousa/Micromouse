################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/net/cellular/UbloxUSBModem/UbloxCDMAModemInitializer.cpp \
../libraries/net/cellular/UbloxUSBModem/UbloxGSMModemInitializer.cpp \
../libraries/net/cellular/UbloxUSBModem/UbloxModem.cpp \
../libraries/net/cellular/UbloxUSBModem/UbloxUSBCDMAModem.cpp \
../libraries/net/cellular/UbloxUSBModem/UbloxUSBGSMModem.cpp 

OBJS += \
./libraries/net/cellular/UbloxUSBModem/UbloxCDMAModemInitializer.o \
./libraries/net/cellular/UbloxUSBModem/UbloxGSMModemInitializer.o \
./libraries/net/cellular/UbloxUSBModem/UbloxModem.o \
./libraries/net/cellular/UbloxUSBModem/UbloxUSBCDMAModem.o \
./libraries/net/cellular/UbloxUSBModem/UbloxUSBGSMModem.o 

CPP_DEPS += \
./libraries/net/cellular/UbloxUSBModem/UbloxCDMAModemInitializer.d \
./libraries/net/cellular/UbloxUSBModem/UbloxGSMModemInitializer.d \
./libraries/net/cellular/UbloxUSBModem/UbloxModem.d \
./libraries/net/cellular/UbloxUSBModem/UbloxUSBCDMAModem.d \
./libraries/net/cellular/UbloxUSBModem/UbloxUSBGSMModem.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/cellular/UbloxUSBModem/%.o: ../libraries/net/cellular/UbloxUSBModem/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


