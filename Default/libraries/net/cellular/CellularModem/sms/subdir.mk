################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/net/cellular/CellularModem/sms/CDMASMSInterface.cpp \
../libraries/net/cellular/CellularModem/sms/GSMSMSInterface.cpp 

OBJS += \
./libraries/net/cellular/CellularModem/sms/CDMASMSInterface.o \
./libraries/net/cellular/CellularModem/sms/GSMSMSInterface.o 

CPP_DEPS += \
./libraries/net/cellular/CellularModem/sms/CDMASMSInterface.d \
./libraries/net/cellular/CellularModem/sms/GSMSMSInterface.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/cellular/CellularModem/sms/%.o: ../libraries/net/cellular/CellularModem/sms/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

