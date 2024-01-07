#!/bin/sh
# TODO: make this so we dont copy files that already exist and havent been updated (maybe have same number of bytes on backup and primary drive?)

echo "Copying scripts..."
cp -rf /home/julia/scripts/** /home/julia/hdd3/backup/scripts

echo "Copying hdd0..."
cp -rf /home/julia/hdd0/** /home/julia/hdd3/backup/hdd0

echo "Copying hdd1..."
cp -rf /home/julia/hdd1/** /home/julia/hdd3/backup/hdd1

echo "Copying hdd2..."
cp -rf /home/julia/hdd2/** /home/julia/hdd3/backup/hdd2
