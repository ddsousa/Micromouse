################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_f32.c \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_q15.c \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_q31.c \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_f32.c \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_q15.c \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_q31.c \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_sin_cos_f32.c \
../libraries/dsp/cmsis_dsp/ControllerFunctions/arm_sin_cos_q31.c 

OBJS += \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_f32.o \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_q15.o \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_q31.o \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_f32.o \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_q15.o \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_q31.o \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_sin_cos_f32.o \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_sin_cos_q31.o 

C_DEPS += \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_f32.d \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_q15.d \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_init_q31.d \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_f32.d \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_q15.d \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_pid_reset_q31.d \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_sin_cos_f32.d \
./libraries/dsp/cmsis_dsp/ControllerFunctions/arm_sin_cos_q31.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/dsp/cmsis_dsp/ControllerFunctions/%.o: ../libraries/dsp/cmsis_dsp/ControllerFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


