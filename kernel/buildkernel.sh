#!/bin/sh

make mrproper
make android_latona_r08_eng_defconfig
cp CURRENT_VERSION .version
make -j4 # using 3 core phenom
