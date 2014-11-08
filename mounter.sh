#!/bin/bash
export LFS=/mnt/lfs
for i in 6 7 8 9 10 11
do
	if [ $i -eq 6 ]
	then
		mkdir $LFS
		mount /dev/sda$i $LFS
		mkdir $LFS/boot
	fi
	
	if [ $i -eq 7 ]
	then
		mkdir $LFS/home
		mount /dev/sda$i $LFS/home
	fi
	if [ $i -eq 8 ]
	then
		mkdir $LFS/usr
		mount /dev/sda$i $LFS/home
	fi
	if [ $i -eq 9 ]
	then
		mkdir $LFS/tmp
		mount /dev/sda$i $LFS/tmp
	fi
	if [ $i -eq 10 ]
	then 
		mkdir $LFS/usr/source
		mount /dev/sda$i $LFS/usr/source
	fi
	if [ $i -eq 11 ]
	then
		swapon /dev/sda$i
	fi
done
