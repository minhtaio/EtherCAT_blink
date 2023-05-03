################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU ARM Embedded (10.3-2021.10)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include Application/EthCatSlave/subdir.mk
-include Application/Drivers/tmc/ic/TMC8462/subdir.mk
-include Application/Drivers/tmc/helpers/subdir.mk
-include Application/Drivers/spiDma/subdir.mk
-include Application/Drivers/soes/hal/tmc/subdir.mk
-include Application/Drivers/soes/subdir.mk
-include Application/AppsTest/TMC_Test/subdir.mk
-include Application/AppsTest/SPIDMA_Test/subdir.mk
-include Application/AppsTest/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := EthCat_Slave_Tmc
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
EthCat_Slave_Tmc.elf \

MAP_FILES += \
EthCat_Slave_Tmc.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
EthCat_Slave_Tmc.list \

OBJCOPY_HEX += \
EthCat_Slave_Tmc.hex \

OBJCOPY_BIN += \
EthCat_Slave_Tmc.bin \


# All Target
all: main-build

# Main-build Target
main-build: EthCat_Slave_Tmc.elf secondary-outputs

# Tool invocations
EthCat_Slave_Tmc.elf EthCat_Slave_Tmc.map: $(OBJS) $(USER_OBJS) D:\Project\Freelancer\EtherCAT2Spi\02_Source\03_MTBOT_ethercat\03_MTBOT_EthCat_Slave_Stm\EthCat_Slave_Tmc\STM32F411RETX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "EthCat_Slave_Tmc.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\Project\Freelancer\EtherCAT2Spi\02_Source\03_MTBOT_ethercat\03_MTBOT_EthCat_Slave_Stm\EthCat_Slave_Tmc\STM32F411RETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="EthCat_Slave_Tmc.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

EthCat_Slave_Tmc.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "EthCat_Slave_Tmc.list"
	@echo 'Finished building: $@'
	@echo ' '

EthCat_Slave_Tmc.hex: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O ihex $(EXECUTABLES) "EthCat_Slave_Tmc.hex"
	@echo 'Finished building: $@'
	@echo ' '

EthCat_Slave_Tmc.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "EthCat_Slave_Tmc.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) EthCat_Slave_Tmc.bin EthCat_Slave_Tmc.elf EthCat_Slave_Tmc.hex EthCat_Slave_Tmc.list EthCat_Slave_Tmc.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_HEX) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
