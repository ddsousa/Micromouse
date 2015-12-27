################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := del

# All of the sources participating in the build are defined here
-include sources.mk
-include libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4XX/subdir.mk
-include libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/subdir.mk
-include libraries/mbed/targets/hal/TARGET_STM/TARGET_STM32F4/subdir.mk
-include libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/TOOLCHAIN_ARM_STD/subdir.mk
-include libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4XX/subdir.mk
-include libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/TOOLCHAIN_GCC_ARM/subdir.mk
-include libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4/TARGET_MTS_MDOT_F405RG/subdir.mk
-include libraries/mbed/targets/cmsis/TARGET_STM/TARGET_STM32F4/subdir.mk
-include libraries/mbed/common/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(CC_DEPS)),)
-include $(CC_DEPS)
endif
ifneq ($(strip $(C++_DEPS)),)
-include $(C++_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(CXX_DEPS)),)
-include $(CXX_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: Nucleo_blink_led

# Tool invocations
Nucleo_blink_led: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross ARM C++ Linker'
	arm-none-eabi-g++ -mcpu=cortex-m3 -mthumb -O2  -g -Xlinker --gc-sections -L"C:\David\Micromouse\NEW_CODE\Nucleo_blink_led\libraries\mbed\api" -Wl,-Map,"Nucleo_blink_led.map" -o "Nucleo_blink_led" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(CC_DEPS)$(C++_DEPS)$(OBJS)$(C_UPPER_DEPS)$(CXX_DEPS)$(ASM_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(CPP_DEPS) Nucleo_blink_led
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
