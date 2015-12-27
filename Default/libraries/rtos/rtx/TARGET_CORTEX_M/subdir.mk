################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/rtos/rtx/TARGET_CORTEX_M/HAL_CM.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Event.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_List.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_MemBox.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mutex.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Robin.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_System.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Task.c \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Time.c 

O_SRCS += \
../libraries/rtos/rtx/TARGET_CORTEX_M/HAL_CM.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Event.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_List.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_MemBox.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mutex.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Robin.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_System.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Task.o \
../libraries/rtos/rtx/TARGET_CORTEX_M/rt_Time.o 

OBJS += \
./libraries/rtos/rtx/TARGET_CORTEX_M/HAL_CM.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Event.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_List.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_MemBox.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mutex.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Robin.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_System.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Task.o \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Time.o 

C_DEPS += \
./libraries/rtos/rtx/TARGET_CORTEX_M/HAL_CM.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/RTX_Conf_CM.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_CMSIS.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Event.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_List.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mailbox.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_MemBox.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Mutex.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Robin.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Semaphore.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_System.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Task.d \
./libraries/rtos/rtx/TARGET_CORTEX_M/rt_Time.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/rtos/rtx/TARGET_CORTEX_M/%.o: ../libraries/rtos/rtx/TARGET_CORTEX_M/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


