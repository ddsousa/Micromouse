################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/tests/net/cellular/http/common/HTTPClient/data/HTTPMap.cpp \
../libraries/tests/net/cellular/http/common/HTTPClient/data/HTTPText.cpp 

OBJS += \
./libraries/tests/net/cellular/http/common/HTTPClient/data/HTTPMap.o \
./libraries/tests/net/cellular/http/common/HTTPClient/data/HTTPText.o 

CPP_DEPS += \
./libraries/tests/net/cellular/http/common/HTTPClient/data/HTTPMap.d \
./libraries/tests/net/cellular/http/common/HTTPClient/data/HTTPText.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/net/cellular/http/common/HTTPClient/data/%.o: ../libraries/tests/net/cellular/http/common/HTTPClient/data/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


