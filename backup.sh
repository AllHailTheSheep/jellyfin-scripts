#!/bin/sh
mount /dev/sde /home/julia/hdd3

echo "Copying scripts..."
rsync -vvhru --progress --delete /home/julia/scripts/ /home/julia/hdd3/backup/scripts

echo "Copying hdd0..."
rsync -vvhru --progress --delete /home/julia/hdd0/ /home/julia/hdd3/backup/hdd0

echo "Copying hdd1..."
rsync -vvhru --progress --delete /home/julia/hdd1/ /home/julia/hdd3/backup/hdd1

echo "Copying hdd2..."
rsync -vvhru --progress --delete /home/julia/hdd2/ /home/julia/hdd3/backup/hdd2

umount /dev/sde
