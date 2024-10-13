#!/bin/bash

sudo fdisk /dev/sdc << EOF
n
p
1

+3GB
n
p
2

+3GB
n
p
3

+3GB
n
e


w
EOF

sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3

sudo mkdir -p /mnt/part{1..3}

sudo mount /dev/sdc1 /mnt/part1
sudo mount /dev/sdc2 /mnt/part2
sudo mount /dev/sdc3 /mnt/part3

sudo lsblk

df -h

