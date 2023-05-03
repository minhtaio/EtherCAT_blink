################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU ARM Embedded (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/Drivers/soes/ecat_slv.c \
../Application/Drivers/soes/esc.c \
../Application/Drivers/soes/esc_coe.c \
../Application/Drivers/soes/esc_eep.c \
../Application/Drivers/soes/esc_eoe.c \
../Application/Drivers/soes/esc_foe.c 

OBJS += \
./Application/Drivers/soes/ecat_slv.o \
./Application/Drivers/soes/esc.o \
./Application/Drivers/soes/esc_coe.o \
./Application/Drivers/soes/esc_eep.o \
./Application/Drivers/soes/esc_eoe.o \
./Application/Drivers/soes/esc_foe.o 

C_DEPS += \
./Application/Drivers/soes/ecat_slv.d \
./Application/Drivers/soes/esc.d \
./Application/Drivers/soes/esc_coe.d \
./Application/Drivers/soes/esc_eep.d \
./Application/Drivers/soes/esc_eoe.d \
./Application/Drivers/soes/esc_foe.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Drivers/soes/%.o Application/Drivers/soes/%.su Application/Drivers/soes/%.cyclo: ../Application/Drivers/soes/%.c Application/Drivers/soes/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/helpers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ic/TMC8462" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ramp" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/spiDma" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/EthCatSlave" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes/hal/tmc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes/include/sys/gcc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest/TMC_Test" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-Drivers-2f-soes

clean-Application-2f-Drivers-2f-soes:
	-$(RM) ./Application/Drivers/soes/ecat_slv.cyclo ./Application/Drivers/soes/ecat_slv.d ./Application/Drivers/soes/ecat_slv.o ./Application/Drivers/soes/ecat_slv.su ./Application/Drivers/soes/esc.cyclo ./Application/Drivers/soes/esc.d ./Application/Drivers/soes/esc.o ./Application/Drivers/soes/esc.su ./Application/Drivers/soes/esc_coe.cyclo ./Application/Drivers/soes/esc_coe.d ./Application/Drivers/soes/esc_coe.o ./Application/Drivers/soes/esc_coe.su ./Application/Drivers/soes/esc_eep.cyclo ./Application/Drivers/soes/esc_eep.d ./Application/Drivers/soes/esc_eep.o ./Application/Drivers/soes/esc_eep.su ./Application/Drivers/soes/esc_eoe.cyclo ./Application/Drivers/soes/esc_eoe.d ./Application/Drivers/soes/esc_eoe.o ./Application/Drivers/soes/esc_eoe.su ./Application/Drivers/soes/esc_foe.cyclo ./Application/Drivers/soes/esc_foe.d ./Application/Drivers/soes/esc_foe.o ./Application/Drivers/soes/esc_foe.su

.PHONY: clean-Application-2f-Drivers-2f-soes

