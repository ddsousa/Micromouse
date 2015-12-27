################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Kalman.cpp \
../LCD.cpp \
../PID.cpp \
../QEI.cpp \
../debug.cpp \
../encoders.cpp \
../gyro.cpp \
../main.cpp \
../motors.cpp \
../old_code.cpp \
../sensors.cpp 

O_SRCS += \
../Kalman.o \
../PID.o \
../QEI.o \
../debug.o \
../encoders.o \
../gyro.o \
../main.o \
../motors.o 

OBJS += \
./Kalman.o \
./LCD.o \
./PID.o \
./QEI.o \
./debug.o \
./encoders.o \
./gyro.o \
./main.o \
./motors.o \
./old_code.o \
./sensors.o 

CPP_DEPS += \
./Kalman.d \
./LCD.d \
./PID.d \
./QEI.d \
./debug.d \
./encoders.d \
./gyro.d \
./main.d \
./motors.d \
./old_code.d \
./sensors.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C++ Compiler'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -I"C:\David\Micromouse\NEW_CODE\Nucleo_blink_led\libraries\mbed\api" -std=gnu++11 -fabi-version=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


