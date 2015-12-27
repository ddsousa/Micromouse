################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_f32.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q15.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q31.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q7.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_f32.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q15.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q31.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q7.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q15.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q31.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q7.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_float.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_q31.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_q7.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_float.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_q15.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_q7.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_float.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_q15.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_q31.c \
../libraries/dsp/cmsis_dsp/SupportFunctions/math_helper.c 

OBJS += \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_f32.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q15.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q31.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q7.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_f32.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q15.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q31.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q7.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q15.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q31.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q7.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_float.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_q31.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_q7.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_float.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_q15.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_q7.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_float.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_q15.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_q31.o \
./libraries/dsp/cmsis_dsp/SupportFunctions/math_helper.o 

C_DEPS += \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_f32.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q15.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q31.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_copy_q7.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_f32.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q15.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q31.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_fill_q7.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q15.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q31.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_float_to_q7.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_float.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_q31.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q15_to_q7.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_float.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_q15.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q31_to_q7.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_float.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_q15.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/arm_q7_to_q31.d \
./libraries/dsp/cmsis_dsp/SupportFunctions/math_helper.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/dsp/cmsis_dsp/SupportFunctions/%.o: ../libraries/dsp/cmsis_dsp/SupportFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


