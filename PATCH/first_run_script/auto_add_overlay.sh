#!/bin/bash
start=$(fdisk -l /dev/mmcblk0 | grep p2 | awk '{print $3+1}')
echo "n


$start

w
" | fdisk /dev/mmcblk0 && mkfs.ext4 /dev/mmcblk0p3
block detect | sed 's/\/overlay/\/mnt\/loop0/g' | sed '$d' | sed '$s/0/1/' | sed 's/mnt\/mmcblk0p3/overlay/' | uci import fstab

sleep 5 && touch /etc/banner && reboot