################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU ARM Embedded (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Drivers/tmc/ramp/LinearRamp.c \
../Application/Drivers/tmc/ramp/LinearRamp1.c \
../Application/Drivers/tmc/ramp/Ramp.c 

OBJS += \
./Application/Drivers/tmc/ramp/LinearRamp.o \
./Application/Drivers/tmc/ramp/LinearRamp1.o \
./Application/Drivers/tmc/ramp/Ramp.o 

C_DEPS += \
./Application/Drivers/tmc/ramp/LinearRamp.d \
./Application/Drivers/tmc/ramp/LinearRamp1.d \
./Application/Drivers/tmc/ramp/Ramp.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Drivers/tmc/ramp/%.o Application/Drivers/tmc/ramp/%.su Application/Drivers/tmc/ramp/%.cyclo: ../Application/Drivers/tmc/ramp/%.c Application/Drivers/tmc/ramp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/helpers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ic/TMC8462" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ramp" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/spiDma" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest/TMC_Test" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Drivers-2f-tmc-2f-ramp

clean-Application-2f-Drivers-2f-tmc-2f-ramp:
	-$(RM) ./Application/Drivers/tmc/ramp/LinearRamp.cyclo ./Application/Drivers/tmc/ramp/LinearRamp.d ./Application/Drivers/tmc/ramp/LinearRamp.o ./Application/Drivers/tmc/ramp/LinearRamp.su ./Application/Drivers/tmc/ramp/LinearRamp1.cyclo ./Application/Drivers/tmc/ramp/LinearRamp1.d ./Application/Drivers/tmc/ramp/LinearRamp1.o ./Application/Drivers/tmc/ramp/LinearRamp1.su ./Application/Drivers/tmc/ramp/Ramp.cyclo ./Application/Drivers/tmc/ramp/Ramp.d ./Application/Drivers/tmc/ramp/Ramp.o ./Application/Drivers/tmc/ramp/Ramp.su

.PHONY: clean-Application-2f-Drivers-2f-tmc-2f-ramp

