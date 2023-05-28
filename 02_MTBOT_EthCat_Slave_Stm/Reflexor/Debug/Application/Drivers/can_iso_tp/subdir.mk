################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Drivers/can_iso_tp/can_iso_tp.c \
../Application/Drivers/can_iso_tp/can_iso_tp_fifoqueue.c \
../Application/Drivers/can_iso_tp/can_iso_tp_mcu_lock.c 

OBJS += \
./Application/Drivers/can_iso_tp/can_iso_tp.o \
./Application/Drivers/can_iso_tp/can_iso_tp_fifoqueue.o \
./Application/Drivers/can_iso_tp/can_iso_tp_mcu_lock.o 

C_DEPS += \
./Application/Drivers/can_iso_tp/can_iso_tp.d \
./Application/Drivers/can_iso_tp/can_iso_tp_fifoqueue.d \
./Application/Drivers/can_iso_tp/can_iso_tp_mcu_lock.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Drivers/can_iso_tp/%.o Application/Drivers/can_iso_tp/%.su Application/Drivers/can_iso_tp/%.cyclo: ../Application/Drivers/can_iso_tp/%.c Application/Drivers/can_iso_tp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32G474xx -c -I../Core/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc -I../Drivers/STM32G4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32G4xx/Include -I../Drivers/CMSIS/Include -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes/hal" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes/hal/tmc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/soes/include/sys/gcc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/spiDma" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/tmc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/tmc/helpers" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/tmc/ic/TMC8462" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/EthCatSlave" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/CanIDLE" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/CanIDLE/inc" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/CanIDLE/src" -I"/home/administrator/Project/MTBOT/03_MTBOT_EthCat_Slave_Stm/Reflexor/Application/Drivers/can_iso_tp" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Drivers-2f-can_iso_tp

clean-Application-2f-Drivers-2f-can_iso_tp:
	-$(RM) ./Application/Drivers/can_iso_tp/can_iso_tp.cyclo ./Application/Drivers/can_iso_tp/can_iso_tp.d ./Application/Drivers/can_iso_tp/can_iso_tp.o ./Application/Drivers/can_iso_tp/can_iso_tp.su ./Application/Drivers/can_iso_tp/can_iso_tp_fifoqueue.cyclo ./Application/Drivers/can_iso_tp/can_iso_tp_fifoqueue.d ./Application/Drivers/can_iso_tp/can_iso_tp_fifoqueue.o ./Application/Drivers/can_iso_tp/can_iso_tp_fifoqueue.su ./Application/Drivers/can_iso_tp/can_iso_tp_mcu_lock.cyclo ./Application/Drivers/can_iso_tp/can_iso_tp_mcu_lock.d ./Application/Drivers/can_iso_tp/can_iso_tp_mcu_lock.o ./Application/Drivers/can_iso_tp/can_iso_tp_mcu_lock.su

.PHONY: clean-Application-2f-Drivers-2f-can_iso_tp

