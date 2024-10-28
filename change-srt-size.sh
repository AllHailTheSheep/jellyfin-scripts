#!/bin/sh
mkdir ./temp && mv ./*.srt ./temp && cd ./temp
sed -i "s/size="38"/size="16"/g" *
mv ./* ../ && cd .. && rm -rf ./temp
