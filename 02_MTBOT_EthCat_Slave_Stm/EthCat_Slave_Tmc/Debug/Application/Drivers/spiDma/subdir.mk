################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU ARM Embedded (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Drivers/spiDma/spiDma.c 

OBJS += \
./Application/Drivers/spiDma/spiDma.o 

C_DEPS += \
./Application/Drivers/spiDma/spiDma.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Drivers/spiDma/%.o Application/Drivers/spiDma/%.su Application/Drivers/spiDma/%.cyclo: ../Application/Drivers/spiDma/%.c Application/Drivers/spiDma/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/helpers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ic/TMC8462" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ramp" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/spiDma" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/EthCatSlave" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes/hal/tmc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes/include/sys/gcc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest/TMC_Test" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Drivers-2f-spiDma

clean-Application-2f-Drivers-2f-spiDma:
	-$(RM) ./Application/Drivers/spiDma/spiDma.cyclo ./Application/Drivers/spiDma/spiDma.d ./Application/Drivers/spiDma/spiDma.o ./Application/Drivers/spiDma/spiDma.su

.PHONY: clean-Application-2f-Drivers-2f-spiDma

