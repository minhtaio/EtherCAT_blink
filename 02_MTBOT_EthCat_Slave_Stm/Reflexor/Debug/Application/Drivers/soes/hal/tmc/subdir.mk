################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Drivers/soes/hal/tmc/esc_hw.c 

OBJS += \
./Application/Drivers/soes/hal/tmc/esc_hw.o 

C_DEPS += \
./Application/Drivers/soes/hal/tmc/esc_hw.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Drivers/soes/hal/tmc/%.o Application/Drivers/soes/hal/tmc/%.su Application/Drivers/soes/hal/tmc/%.cyclo: ../Application/Drivers/soes/hal/tmc/%.c Application/Drivers/soes/hal/tmc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes/hal" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes/hal/tmc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes/include/sys/gcc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/spiDma" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/tmc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/tmc/helpers" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/tmc/ic/TMC8462" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/EthCatSlave" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/CanIDLE" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/CanIDLE/inc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/CanIDLE/src" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/can_iso_tp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Drivers-2f-soes-2f-hal-2f-tmc

clean-Application-2f-Drivers-2f-soes-2f-hal-2f-tmc:
	-$(RM) ./Application/Drivers/soes/hal/tmc/esc_hw.cyclo ./Application/Drivers/soes/hal/tmc/esc_hw.d ./Application/Drivers/soes/hal/tmc/esc_hw.o ./Application/Drivers/soes/hal/tmc/esc_hw.su

.PHONY: clean-Application-2f-Drivers-2f-soes-2f-hal-2f-tmc

