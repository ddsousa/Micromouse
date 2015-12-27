################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/analogin_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/gpio_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/i2c_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/pinmap.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/port_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/spi_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/us_ticker.c 

OBJS += \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/analogin_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/gpio_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/i2c_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/pinmap.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/port_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/spi_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/us_ticker.o 

C_DEPS += \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/analogin_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/gpio_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/i2c_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/pinmap.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/port_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/spi_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/us_ticker.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/%.o: ../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -I"C:\David\Micromouse\NEW_CODE\Nucleo_blink_led\libraries\mbed\api" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


