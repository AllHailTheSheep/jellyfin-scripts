#!/bin/sh
# TODO: make this so we dont copy files that already exist and havent been updated (maybe have same number of bytes on backup and primary drive?)

echo "Copying scripts..."
# cp -uvrf /home/julia/scripts/** /home/julia/hdd3/backup/scripts
rsync -vvhru --progress --delete /home/julia/scripts/ /home/julia/hdd3/backup/scripts

echo "Copying hdd0..."
# cp -uvrf /home/julia/hdd0/** /home/julia/hdd3/backup/hdd0
rsync -vvhru --progress --delete /home/julia/hdd0/ /home/julia/hdd3/backup/hdd0

echo "Copying hdd1..."
# cp -uvrf /home/julia/hdd1/** /home/julia/hdd3/backup/hdd1
rsync -vvhru --progress --delete /home/julia/hdd1/ /home/julia/hdd3/backup/hdd1

echo "Copying hdd2..."
# cp -uvrf /home/julia/hdd2/** /home/julia/hdd3/backup/hdd2
rsync -vvhru --progress --delete /home/julia/hdd2/ /home/julia/hdd3/backup/hdd2
