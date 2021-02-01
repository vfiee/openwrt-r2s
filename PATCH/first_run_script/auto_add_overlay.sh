#!/bin/bash

if [ -z "$(fdisk -l /dev/mmcblk0 | grep p3)" ]; then
    start=$(fdisk -l /dev/mmcblk0 | grep p2 | awk '{print $3+1}')
    echo "n


$start

w
" | fdisk /dev/mmcblk0 && mkfs.ext4 /dev/mmcblk0p3
fi
if [ -z "$(block info | grep -nE 'mmcblk0p3.*overlay')" ]; then
    block detect | sed '$d' | sed '$s/0/1/' | sed 's/mnt\/mmcblk0p3/overlay/' | uci import fstab
    sleep 15 && touch /etc/banner && reboot
fi
exit 0