#!/bin/bash
#
# Copyright - CrazyGamerGR
#     		 ________     __   ___
#    		/ ______|    |  | /  |
#    		|  |         |  |/  /
#   		|  |_____    |      \              
#   		\_______|    |__|\___|
##########################################
export ARCH=arm64
export CROSS_COMPILE=/home/francesco/CrazySuperKernels/Toolchains/aarch64-linux-android-6.0-kernel/bin/aarch64-linux-android-
##########################################
mkdir outputs7
mkdir outputs7edge
##########################################
make -C $(pwd) O=outputs7 exynos8890-herolte_defconfig
make -C $(pwd) O=outputs7

make -C $(pwd) O=outputs7edge exynos8890-hero2lte_defconfig
make -C $(pwd) O=outputs7edge
##########################################
cp outputs7/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
cp outputs7edge/arch/arm64/boot/Image $(pwd)/arch/arm64/boot/zImage
