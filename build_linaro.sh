#!/bin/bash
###############################################################################
#
#                           Kernel Build Script 
#
###############################################################################
# 2011-10-24 effectivesky : modified
# 2010-12-29 allydrop     : created
###############################################################################
##############################################################################
# set toolchain
##############################################################################

export ARCH=arm
export CROSS_COMPILE=$PWD/../../bin/Linaro/bin/arm-cortex_a9-linux-gnueabi-
#export CROSS_COMPILE=arm-linux-gnueabi-
##############################################################################
# make zImage
##############################################################################

make -j3 zImage
make INSTALL_MOD_PATH=output modules
make INSTALL_MOD_PATH=output modules_install
#mkdir -p ./obj/KERNEL_OBJ/
#make O=./obj/KERNEL_OBJ/ msm8660-perf-EF65L_TP20_defconfig
#make -j4 O=./obj/KERNEL_OBJ/

##############################################################################
# Copy Kernel Image
##############################################################################
#cp -f ./obj/KERNEL_OBJ/arch/arm/boot/zImage .

