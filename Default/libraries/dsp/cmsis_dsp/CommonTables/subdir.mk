################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/dsp/cmsis_dsp/CommonTables/arm_common_tables.c 

OBJS += \
./libraries/dsp/cmsis_dsp/CommonTables/arm_common_tables.o 

C_DEPS += \
./libraries/dsp/cmsis_dsp/CommonTables/arm_common_tables.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/dsp/cmsis_dsp/CommonTables/%.o: ../libraries/dsp/cmsis_dsp/CommonTables/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


