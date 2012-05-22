#!/bin/sh

# This is build file
cd kernel
./buildkernel.sh
cd ..
cp kernel/arch/arm/boot/zImage imagetool/kernel/zImage -v

cp --remove-destination kernel/crypto/pcbc.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/crypto/pcbc.ko
cp --remove-destination kernel/drivers/bluetooth/btwilink.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/drivers/bluetooth/btwilink.ko
cp --remove-destination kernel/drivers/misc/ti-st/st_drv.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/drivers/misc/ti-st/st_drv.ko
cp --remove-destination kernel/drivers/scsi/scsi_wait_scan.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/drivers/scsi/scsi_wait_scan.ko
cp --remove-destination kernel/samsung/battery/samsung_battery.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/battery/samsung_battery.ko
cp --remove-destination kernel/samsung/bma222/yas_acc_kernel_driver.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/bma222/yas_acc_kernel_driver.ko
cp --remove-destination kernel/samsung/fm_si4709/Si4709_driver.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/fm_si4709/Si4709_driver.ko
cp --remove-destination kernel/samsung/gp2a/gp2a.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/gp2a/gp2a.ko
cp --remove-destination kernel/samsung/gps/gps.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/gps/gps.ko
cp --remove-destination kernel/samsung/orientation/yas_ori_kernel_driver.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/orientation/yas_ori_kernel_driver.ko
cp --remove-destination kernel/samsung/param/param.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/param/param.ko
cp --remove-destination kernel/samsung/vibetonz/vibetonz.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/vibetonz/vibetonz.ko
cp --remove-destination kernel/samsung/yas529/yas_mag_kernel_driver.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/samsung/yas529/yas_mag_kernel_driver.ko
cp --remove-destination kernel/fs/mbcache.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/fs/mbcache.ko
cp --remove-destination kernel/fs/jbd2/jbd2.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/fs/jbd2/jbd2.ko
cp --remove-destination kernel/fs/ext4/ext4.ko ramdisk_universal/lib/modules/2.6.35.7/kernel/fs/ext4/ext4.ko

cd ../../../../../
cd ramdisk_universal/lib/modules/2.6.35.7/kernel/
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded crypto/pcbc.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded drivers/bluetooth/btwilink.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded drivers/misc/ti-st/st_drv.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded drivers/scsi/scsi_wait_scan.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/battery/samsung_battery.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/bma222/yas_acc_kernel_driver.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/fm_si4709/Si4709_driver.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/gp2a/gp2a.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/gps/gps.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/orientation/yas_ori_kernel_driver.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/param/param.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/vibetonz/vibetonz.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded samsung/yas529/yas_mag_kernel_driver.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded fs/mbcache.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded fs/jbd2/jbd2.ko
	/opt/arm-linux-eabi-4.6.2/bin/arm-eabi-strip --strip-unneeded fs/ext4/ext4.ko

echo "Finish D:"
read ANS
