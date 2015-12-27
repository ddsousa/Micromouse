################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/tests/mbed/spifi2/splashImage01.c \
../libraries/tests/mbed/spifi2/splashImage02.c \
../libraries/tests/mbed/spifi2/splashImage03.c \
../libraries/tests/mbed/spifi2/splashImage04.c \
../libraries/tests/mbed/spifi2/splashImage05.c \
../libraries/tests/mbed/spifi2/splashImage06.c \
../libraries/tests/mbed/spifi2/splashImage07.c \
../libraries/tests/mbed/spifi2/splashImage08.c \
../libraries/tests/mbed/spifi2/splashImage09.c \
../libraries/tests/mbed/spifi2/splashImage10.c \
../libraries/tests/mbed/spifi2/splashImage11.c \
../libraries/tests/mbed/spifi2/splashImage12.c \
../libraries/tests/mbed/spifi2/splashImage13.c \
../libraries/tests/mbed/spifi2/splashImage14.c \
../libraries/tests/mbed/spifi2/splashImage15.c 

CPP_SRCS += \
../libraries/tests/mbed/spifi2/main.cpp 

OBJS += \
./libraries/tests/mbed/spifi2/main.o \
./libraries/tests/mbed/spifi2/splashImage01.o \
./libraries/tests/mbed/spifi2/splashImage02.o \
./libraries/tests/mbed/spifi2/splashImage03.o \
./libraries/tests/mbed/spifi2/splashImage04.o \
./libraries/tests/mbed/spifi2/splashImage05.o \
./libraries/tests/mbed/spifi2/splashImage06.o \
./libraries/tests/mbed/spifi2/splashImage07.o \
./libraries/tests/mbed/spifi2/splashImage08.o \
./libraries/tests/mbed/spifi2/splashImage09.o \
./libraries/tests/mbed/spifi2/splashImage10.o \
./libraries/tests/mbed/spifi2/splashImage11.o \
./libraries/tests/mbed/spifi2/splashImage12.o \
./libraries/tests/mbed/spifi2/splashImage13.o \
./libraries/tests/mbed/spifi2/splashImage14.o \
./libraries/tests/mbed/spifi2/splashImage15.o 

C_DEPS += \
./libraries/tests/mbed/spifi2/splashImage01.d \
./libraries/tests/mbed/spifi2/splashImage02.d \
./libraries/tests/mbed/spifi2/splashImage03.d \
./libraries/tests/mbed/spifi2/splashImage04.d \
./libraries/tests/mbed/spifi2/splashImage05.d \
./libraries/tests/mbed/spifi2/splashImage06.d \
./libraries/tests/mbed/spifi2/splashImage07.d \
./libraries/tests/mbed/spifi2/splashImage08.d \
./libraries/tests/mbed/spifi2/splashImage09.d \
./libraries/tests/mbed/spifi2/splashImage10.d \
./libraries/tests/mbed/spifi2/splashImage11.d \
./libraries/tests/mbed/spifi2/splashImage12.d \
./libraries/tests/mbed/spifi2/splashImage13.d \
./libraries/tests/mbed/spifi2/splashImage14.d \
./libraries/tests/mbed/spifi2/splashImage15.d 

CPP_DEPS += \
./libraries/tests/mbed/spifi2/main.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/tests/mbed/spifi2/%.o: ../libraries/tests/mbed/spifi2/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

libraries/tests/mbed/spifi2/%.o: ../libraries/tests/mbed/spifi2/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


