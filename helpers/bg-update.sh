#!/bin/bash

log=/adsbfi/adsbfi-update.log
rm -f $log
exec &> >(tee -a "$log")

export DEBIAN_FRONTEND=noninteractive
apt update
#apt upgrade -y

bash -c "$(wget -nv -O - https://raw.githubusercontent.com/tmantti/adsbfi-update/main/update-adsbfi.sh)"
bash -c "$(wget -nv -O - https://raw.githubusercontent.com/tmantti/adsbfi-webconfig/master/update-webconfig.sh)"

echo "rebooting..."
sleep 5
reboot now
