################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/IfxGtm_Atom_Dtm_PwmHl.c 

OBJS += \
./Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/IfxGtm_Atom_Dtm_PwmHl.o 

COMPILED_SRCS += \
./Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/IfxGtm_Atom_Dtm_PwmHl.src 

C_DEPS += \
./Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/IfxGtm_Atom_Dtm_PwmHl.d 


# Each subdirectory must supply rules for building sources it contributes
Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/%.src: ../Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING C/C++ Compiler'
	cctc -D__CPU__=tc37x -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tom/PwmHl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Platform/Tricore/Compilers" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Platform" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Iom/Iom" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/If/Ccu6If" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Iom/Driver" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Sent" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gpt12/IncrEnc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/I2c" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Psi5s/Psi5s" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/SysSe/Comm" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/SysSe/Math" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Platform/Tricore" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Sent/Sent" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Msc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6/Icu" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Qspi" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Ssw/TC37A" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Qspi/SpiMaster" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/_Lib" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Dma/Dma" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/SysSe" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6/TPwm" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gpt12/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/If" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Msc/Msc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/_Lib/DataHandling" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Asclin/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Edsadc/Edsadc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Sent/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6/Timer" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gpt12" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Convctrl/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Psi5/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Stm" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Edsadc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Sfr/TC37A" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Ssw/TC37A/Tricore" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Psi5" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Sfr/TC37A/_Reg" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Flash" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Scu" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Eray" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Hssl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Msc/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Asclin" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Fce" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Smu/Smu" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Port/Io" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Convctrl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Geth/Eth" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tom" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Sfr" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6/TimerWithTrigger" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/_PinMap" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/_Lib/InternalMux" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/SysSe/Bsp" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/SysSe/General" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Smu" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Evadc/Adc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tim/Timer" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Port" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Configurations" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Flash/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Cpu/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Pwm" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Asclin/Lin" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Fce/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Port/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Dts" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Src" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Dtm_PwmHl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Dma" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Stm/Timer" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Atom/PwmHl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6/PwmHl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Smu/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Iom" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Evadc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Hssl/Hssl" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tim" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/SysSe/Time" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Geth" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Qspi/SpiSlave" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Atom" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Pms/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Pms" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Asclin/Spi" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Eray/Eray" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Hssl/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/I2c/I2c" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Dts/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Can/Can" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Mtu/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Eray/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Cpu" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Scu/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Stm/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Pwm" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Psi5s" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Cpu/Irq" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6/PwmBc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Cpu/Trap" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Infra/Ssw" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/StdIf" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Trig" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Mtu" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Edsadc/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Fce/Crc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Psi5/Psi5" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tim/In" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Qspi/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Configurations/Debug" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Can/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Src/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Dma/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Psi5s/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/Service/CpuGeneric/_Utilities" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Timer" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Iom/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Asclin/Asc" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/I2c/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Ccu6/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Geth/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Gtm/Tom/Timer" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Can" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Dts/Dts" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/Evadc/Std" -I"C:/Users/Ahmed Saad/AURIX-v1.2.2-workspace/Blinky_LED_1_KIT_TC375_SB/Libraries/iLLD/TC37A/Tricore/_Impl" --iso=99 --c++14 --language=+volatile --anachronisms --fp-model=3 --fp-model=c --fp-model=f --fp-model=l --fp-model=n --fp-model=r --fp-model=z -O0 --tradeoff=4 --compact-max-size=200 -g -Wc-w544 -Wc-w557 -Ctc37x -o "$@"  "$<"  -cs --dep-file=$(@:.src=.d) --misrac-version=2012 -N0 -Z0 -Y0 2>&1; sed -i -e '/ctc\\include/d' -e '/Libraries\\iLLD/d' -e '/Libraries\\Infra/d' -e 's/\(.*\)".*\\Blinky_LED_1_KIT_TC375_SB\(\\.*\)"/\1\.\.\2/g' -e 's/\\/\//g' $(@:.src=.d) && \
	echo $(@:.src=.d) generated
	@echo 'Finished building: $<'
	@echo ' '

Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/%.o: ./Libraries/iLLD/TC37A/Tricore/Gtm/Atom/Dtm_PwmHl/%.src
	@echo 'Building file: $<'
	@echo 'Invoking: TASKING Assembler'
	astc -o  "$@" "$<" --list-format=L1 --optimize=gs
	@echo 'Finished building: $<'
	@echo ' '


