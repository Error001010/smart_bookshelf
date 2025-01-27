################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/adc.c \
../Core/Src/cJSON.c \
../Core/Src/callback.c \
../Core/Src/camera.c \
../Core/Src/database_server.c \
../Core/Src/dma.c \
../Core/Src/event_bus.c \
../Core/Src/gpio.c \
../Core/Src/i2c.c \
../Core/Src/led_control.c \
../Core/Src/main.c \
../Core/Src/oled.c \
../Core/Src/pressure.c \
../Core/Src/stm32h7xx_hal_msp.c \
../Core/Src/stm32h7xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32h7xx.c \
../Core/Src/tim.c \
../Core/Src/usart.c \
../Core/Src/usb_otg.c \
../Core/Src/utils.c 

OBJS += \
./Core/Src/adc.o \
./Core/Src/cJSON.o \
./Core/Src/callback.o \
./Core/Src/camera.o \
./Core/Src/database_server.o \
./Core/Src/dma.o \
./Core/Src/event_bus.o \
./Core/Src/gpio.o \
./Core/Src/i2c.o \
./Core/Src/led_control.o \
./Core/Src/main.o \
./Core/Src/oled.o \
./Core/Src/pressure.o \
./Core/Src/stm32h7xx_hal_msp.o \
./Core/Src/stm32h7xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32h7xx.o \
./Core/Src/tim.o \
./Core/Src/usart.o \
./Core/Src/usb_otg.o \
./Core/Src/utils.o 

C_DEPS += \
./Core/Src/adc.d \
./Core/Src/cJSON.d \
./Core/Src/callback.d \
./Core/Src/camera.d \
./Core/Src/database_server.d \
./Core/Src/dma.d \
./Core/Src/event_bus.d \
./Core/Src/gpio.d \
./Core/Src/i2c.d \
./Core/Src/led_control.d \
./Core/Src/main.d \
./Core/Src/oled.d \
./Core/Src/pressure.d \
./Core/Src/stm32h7xx_hal_msp.d \
./Core/Src/stm32h7xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32h7xx.d \
./Core/Src/tim.d \
./Core/Src/usart.d \
./Core/Src/usb_otg.d \
./Core/Src/utils.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o Core/Src/%.su Core/Src/%.cyclo: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32H7A3xxQ -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/adc.cyclo ./Core/Src/adc.d ./Core/Src/adc.o ./Core/Src/adc.su ./Core/Src/cJSON.cyclo ./Core/Src/cJSON.d ./Core/Src/cJSON.o ./Core/Src/cJSON.su ./Core/Src/callback.cyclo ./Core/Src/callback.d ./Core/Src/callback.o ./Core/Src/callback.su ./Core/Src/camera.cyclo ./Core/Src/camera.d ./Core/Src/camera.o ./Core/Src/camera.su ./Core/Src/database_server.cyclo ./Core/Src/database_server.d ./Core/Src/database_server.o ./Core/Src/database_server.su ./Core/Src/dma.cyclo ./Core/Src/dma.d ./Core/Src/dma.o ./Core/Src/dma.su ./Core/Src/event_bus.cyclo ./Core/Src/event_bus.d ./Core/Src/event_bus.o ./Core/Src/event_bus.su ./Core/Src/gpio.cyclo ./Core/Src/gpio.d ./Core/Src/gpio.o ./Core/Src/gpio.su ./Core/Src/i2c.cyclo ./Core/Src/i2c.d ./Core/Src/i2c.o ./Core/Src/i2c.su ./Core/Src/led_control.cyclo ./Core/Src/led_control.d ./Core/Src/led_control.o ./Core/Src/led_control.su ./Core/Src/main.cyclo ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/main.su ./Core/Src/oled.cyclo ./Core/Src/oled.d ./Core/Src/oled.o ./Core/Src/oled.su ./Core/Src/pressure.cyclo ./Core/Src/pressure.d ./Core/Src/pressure.o ./Core/Src/pressure.su ./Core/Src/stm32h7xx_hal_msp.cyclo ./Core/Src/stm32h7xx_hal_msp.d ./Core/Src/stm32h7xx_hal_msp.o ./Core/Src/stm32h7xx_hal_msp.su ./Core/Src/stm32h7xx_it.cyclo ./Core/Src/stm32h7xx_it.d ./Core/Src/stm32h7xx_it.o ./Core/Src/stm32h7xx_it.su ./Core/Src/syscalls.cyclo ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/syscalls.su ./Core/Src/sysmem.cyclo ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/sysmem.su ./Core/Src/system_stm32h7xx.cyclo ./Core/Src/system_stm32h7xx.d ./Core/Src/system_stm32h7xx.o ./Core/Src/system_stm32h7xx.su ./Core/Src/tim.cyclo ./Core/Src/tim.d ./Core/Src/tim.o ./Core/Src/tim.su ./Core/Src/usart.cyclo ./Core/Src/usart.d ./Core/Src/usart.o ./Core/Src/usart.su ./Core/Src/usb_otg.cyclo ./Core/Src/usb_otg.d ./Core/Src/usb_otg.o ./Core/Src/usb_otg.su ./Core/Src/utils.cyclo ./Core/Src/utils.d ./Core/Src/utils.o ./Core/Src/utils.su

.PHONY: clean-Core-2f-Src

