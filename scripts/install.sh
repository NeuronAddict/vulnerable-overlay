#!/usr/bin/env bash


wget -O /tmp/linux-headers-3.19.8-992-generic_3.19.8-992.201607122201_amd64.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/linux-3.19.y.z-review/2016-07-13/linux-headers-3.19.8-992-generic_3.19.8-992.201607122201_amd64.deb
dpkg -i /tmp/linux-headers-3.19.8-992-generic_3.19.8-992.201607122201_amd64.deb

wget -O /tmp/linux-image-3.19.8-992-generic_3.19.8-992.201607122201_amd64.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/linux-3.19.y.z-review/2016-07-13/linux-image-3.19.8-992-generic_3.19.8-992.201607122201_amd64.deb
dpkg -i /tmp/linux-image-3.19.8-992-generic_3.19.8-992.201607122201_amd64.deb



apt-mark hold linux-image-3.19.8-992-generic

KERNEL='"Advanced options for Ubuntu>Ubuntu, with Linux 3.19.8-992-generic"'
sed -ie "s/GRUB_DEFAULT=\(.*\)/GRUB_DEFAULT=${KERNEL}/g" /etc/default/grub

update-grub

#apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y \
#    nasm \
#    libc6-dev \
#    git
