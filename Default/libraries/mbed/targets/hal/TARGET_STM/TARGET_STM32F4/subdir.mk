################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogin_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogout_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_irq_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/i2c_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/mbed_overrides.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pinmap.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/port_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pwmout_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/rtc_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/serial_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/sleep.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/spi_api.c \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/us_ticker.c 

O_SRCS += \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogin_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogout_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_irq_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/i2c_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/mbed_overrides.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pinmap.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/port_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pwmout_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/rtc_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/serial_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/sleep.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/spi_api.o \
../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/us_ticker.o 

OBJS += \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogin_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogout_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_irq_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/i2c_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/mbed_overrides.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pinmap.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/port_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pwmout_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/rtc_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/serial_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/sleep.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/spi_api.o \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/us_ticker.o 

C_DEPS += \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogin_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/analogout_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/gpio_irq_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/i2c_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/mbed_overrides.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pinmap.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/port_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/pwmout_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/rtc_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/serial_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/sleep.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/spi_api.d \
./libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/us_ticker.d 


# Each subdirectory must supply rules for building sources it contributes
libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/%.o: ../libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O2  -g -I"C:\David\Micromouse\NEW_CODE\Nucleo_blink_led\libraries\mbed\api" -std=gnu11 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


