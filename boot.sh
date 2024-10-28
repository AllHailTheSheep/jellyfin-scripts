#!/bin/ash
mount /dev/sda /home/julia/hdd0/
mount /dev/sdc /home/julia/hdd1/
mount /dev/sdb /home/julia/hdd2/

caddy reverse-proxy --from juliafasick.com --to 127.0.0.1:8096 &
/opt/jellyfin/jellyfin.sh &
