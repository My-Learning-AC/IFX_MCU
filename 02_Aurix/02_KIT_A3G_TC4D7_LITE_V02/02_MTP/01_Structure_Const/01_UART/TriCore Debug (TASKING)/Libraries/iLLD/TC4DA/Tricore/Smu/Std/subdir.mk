################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.c \
../Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.c 

COMPILED_SRCS += \
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.src \
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.src 

C_DEPS += \
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.d \
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.d 

OBJS += \
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.o \
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.o 


# Each subdirectory must supply rules for building sources it contributes
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.src: ../Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.c Libraries/iLLD/TC4DA/Tricore/Smu/Std/subdir.mk
	cctc -cs --dep-file="$(*F).d" --misrac-version=2004 -D__CPU__=tc49x "-fC:/Users/KumarDharani/Documents/Aurix_Projects/Projects/UART/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Ctc49x -Y0 -N0 -Z0 --user-mode=hypervisor -o "$@" "$<"
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.o: Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.src Libraries/iLLD/TC4DA/Tricore/Smu/Std/subdir.mk
	astc -Og -Os --no-warnings= --error-limit=42 --user-mode=hypervisor --core=tc1.8 -o  "$@" "$<"
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.src: ../Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.c Libraries/iLLD/TC4DA/Tricore/Smu/Std/subdir.mk
	cctc -cs --dep-file="$(*F).d" --misrac-version=2004 -D__CPU__=tc49x "-fC:/Users/KumarDharani/Documents/Aurix_Projects/Projects/UART/TriCore Debug (TASKING)/TASKING_C_C___Compiler-Include_paths__-I_.opt" --iso=99 --c++14 --language=+volatile --exceptions --anachronisms --fp-model=2 -O0 --tradeoff=4 --compact-max-size=200 -g -Ctc49x -Y0 -N0 -Z0 --user-mode=hypervisor -o "$@" "$<"
Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.o: Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.src Libraries/iLLD/TC4DA/Tricore/Smu/Std/subdir.mk
	astc -Og -Os --no-warnings= --error-limit=42 --user-mode=hypervisor --core=tc1.8 -o  "$@" "$<"

clean: clean-Libraries-2f-iLLD-2f-TC4DA-2f-Tricore-2f-Smu-2f-Std

clean-Libraries-2f-iLLD-2f-TC4DA-2f-Tricore-2f-Smu-2f-Std:
	-$(RM) Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.d Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.o Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmu.src Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.d Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.o Libraries/iLLD/TC4DA/Tricore/Smu/Std/IfxSmuStdby.src

.PHONY: clean-Libraries-2f-iLLD-2f-TC4DA-2f-Tricore-2f-Smu-2f-Std

