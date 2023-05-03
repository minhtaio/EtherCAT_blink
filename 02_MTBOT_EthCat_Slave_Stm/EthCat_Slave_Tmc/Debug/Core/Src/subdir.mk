################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU ARM Embedded (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/dma.c \
../Core/Src/freertos.c \
../Core/Src/gpio.c \
../Core/Src/main.c \
../Core/Src/spi.c \
../Core/Src/stm32f4xx_hal_msp.c \
../Core/Src/stm32f4xx_hal_timebase_tim.c \
../Core/Src/stm32f4xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32f4xx.c \
../Core/Src/usart.c 

OBJS += \
./Core/Src/dma.o \
./Core/Src/freertos.o \
./Core/Src/gpio.o \
./Core/Src/main.o \
./Core/Src/spi.o \
./Core/Src/stm32f4xx_hal_msp.o \
./Core/Src/stm32f4xx_hal_timebase_tim.o \
./Core/Src/stm32f4xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32f4xx.o \
./Core/Src/usart.o 

C_DEPS += \
./Core/Src/dma.d \
./Core/Src/freertos.d \
./Core/Src/gpio.d \
./Core/Src/main.d \
./Core/Src/spi.d \
./Core/Src/stm32f4xx_hal_msp.d \
./Core/Src/stm32f4xx_hal_timebase_tim.d \
./Core/Src/stm32f4xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32f4xx.d \
./Core/Src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/helpers" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ic/TMC8462" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/tmc/ramp" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/spiDma" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/EthCatSlave" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes/hal/tmc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/Drivers/soes/include/sys/gcc" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest" -I"D:/Project/Freelancer/EtherCAT2Spi/02_Source/03_MTBOT_ethercat/03_MTBOT_EthCat_Slave_Stm/EthCat_Slave_Tmc/Application/AppsTest/TMC_Test" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/dma.cyclo ./Core/Src/dma.d ./Core/Src/dma.o ./Core/Src/dma.su ./Core/Src/freertos.cyclo ./Core/Src/freertos.d ./Core/Src/freertos.o ./Core/Src/freertos.su ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/spi.cyclo ./Core/Src/spi.d ./Core/Src/spi.o ./Core/Src/spi.su ./Core/Src/stm32f4xx_hal_msp.cyclo ./Core/Src/stm32f4xx_hal_msp.d ./Core/Src/stm32f4xx_hal_msp.o ./Core/Src/stm32f4xx_hal_msp.su ./Core/Src/stm32f4xx_hal_timebase_tim.cyclo ./Core/Src/stm32f4xx_hal_timebase_tim.d ./Core/Src/stm32f4xx_hal_timebase_tim.o ./Core/Src/stm32f4xx_hal_timebase_tim.su ./Core/Src/stm32f4xx_it.cyclo ./Core/Src/stm32f4xx_it.d ./Core/Src/stm32f4xx_it.o ./Core/Src/stm32f4xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32f4xx.cyclo ./Core/Src/system_stm32f4xx.d ./Core/Src/system_stm32f4xx.o ./Core/Src/system_stm32f4xx.su ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su

.PHONY: clean-Core-2f-Src

