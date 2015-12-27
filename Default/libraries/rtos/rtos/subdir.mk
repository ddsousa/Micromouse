################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../libraries/rtos/rtos/Mutex.cpp \
../libraries/rtos/rtos/RtosTimer.cpp \
../libraries/rtos/rtos/Semaphore.cpp \
../libraries/rtos/rtos/Thread.cpp 

O_SRCS += \
../libraries/rtos/rtos/Mutex.o \
../libraries/rtos/rtos/RtosTimer.o \
../libraries/rtos/rtos/Semaphore.o \
../libraries/rtos/rtos/Thread.o 

OBJS += \
./libraries/rtos/rtos/Mutex.o \
./libraries/rtos/rtos/RtosTimer.o \
./libraries/rtos/rtos/Semaphore.o \
./libraries/rtos/rtos/Thread.o 

CPP_DEPS += \
./libraries/rtos/rtos/Mutex.d \
./libraries/rtos/rtos/RtosTimer.d \
./libraries/rtos/rtos/Semaphore.d \
./libraries/rtos/rtos/Thread.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/rtos/rtos/%.o: ../libraries/rtos/rtos/%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


