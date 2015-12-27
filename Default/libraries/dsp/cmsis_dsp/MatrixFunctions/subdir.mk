################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_f32.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_q15.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_q31.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_f32.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_q15.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_q31.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_inverse_f32.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_f32.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_fast_q15.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_fast_q31.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_q15.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_q31.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_f32.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_q15.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_q31.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_f32.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_q15.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_q31.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_f32.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_q15.c \
../libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_q31.c 

OBJS += \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_f32.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_q15.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_q31.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_f32.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_q15.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_q31.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_inverse_f32.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_f32.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_fast_q15.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_fast_q31.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_q15.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_q31.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_f32.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_q15.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_q31.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_f32.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_q15.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_q31.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_f32.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_q15.o \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_q31.o 

C_DEPS += \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_f32.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_q15.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_add_q31.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_f32.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_q15.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_init_q31.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_inverse_f32.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_f32.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_fast_q15.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_fast_q31.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_q15.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_mult_q31.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_f32.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_q15.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_scale_q31.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_f32.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_q15.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_sub_q31.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_f32.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_q15.d \
./libraries/dsp/cmsis_dsp/MatrixFunctions/arm_mat_trans_q31.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/dsp/cmsis_dsp/MatrixFunctions/%.o: ../libraries/dsp/cmsis_dsp/MatrixFunctions/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


