################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_f32.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_q15.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_q31.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_f32.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_q15.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_q31.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_f32.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_q15.c \
../libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_q31.c 

OBJS += \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_f32.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_q15.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_q31.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_f32.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_q15.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_q31.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_f32.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_q15.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_q31.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_f32.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_q15.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_q31.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_f32.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_q15.o \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_q31.o 

C_DEPS += \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_f32.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_q15.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_conj_q31.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_f32.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_q15.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_dot_prod_q31.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_f32.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_q15.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_q31.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_f32.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_q15.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mag_squared_q31.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_f32.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_q15.d \
./libraries/dsp/cmsis_dsp/ComplexMathFunctions/arm_cmplx_mult_real_q31.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/dsp/cmsis_dsp/ComplexMathFunctions/%.o: ../libraries/dsp/cmsis_dsp/ComplexMathFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


