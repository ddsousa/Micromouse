################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/net/cellular/CellularModem/ip/IPInterface.cpp \
../libraries/net/cellular/CellularModem/ip/LwIPInterface.cpp \
../libraries/net/cellular/CellularModem/ip/PPPIPInterface.cpp 

OBJS += \
./libraries/net/cellular/CellularModem/ip/IPInterface.o \
./libraries/net/cellular/CellularModem/ip/LwIPInterface.o \
./libraries/net/cellular/CellularModem/ip/PPPIPInterface.o 

CPP_DEPS += \
./libraries/net/cellular/CellularModem/ip/IPInterface.d \
./libraries/net/cellular/CellularModem/ip/LwIPInterface.d \
./libraries/net/cellular/CellularModem/ip/PPPIPInterface.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/net/cellular/CellularModem/ip/%.o: ../libraries/net/cellular/CellularModem/ip/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


