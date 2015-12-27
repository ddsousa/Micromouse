################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_f32.c \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_q15.c \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_q31.c \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_f32.c \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_q15.c \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_q31.c \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sqrt_q15.c \
../libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sqrt_q31.c 

OBJS += \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_f32.o \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_q15.o \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_q31.o \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_f32.o \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_q15.o \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_q31.o \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sqrt_q15.o \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sqrt_q31.o 

C_DEPS += \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_f32.d \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_q15.d \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_cos_q31.d \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_f32.d \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_q15.d \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sin_q31.d \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sqrt_q15.d \
./libraries/dsp/cmsis_dsp/FastMathFunctions/arm_sqrt_q31.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/dsp/cmsis_dsp/FastMathFunctions/%.o: ../libraries/dsp/cmsis_dsp/FastMathFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


