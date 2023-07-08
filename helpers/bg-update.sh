#!/bin/bash

log=/flyovrio/flyovrio-update.log
rm -f $log
exec &> >(tee -a "$log")

export DEBIAN_FRONTEND=noninteractive
apt update
#apt upgrade -y

bash -c "$(wget -nv -O - https://raw.githubusercontent.com/flyovr-io/flyovrio-update/main/update-flyovrio.sh)"
bash -c "$(wget -nv -O - https://raw.githubusercontent.com/flyovr-io/flyovrio-webconfig/master/update-webconfig.sh)"

echo "rebooting..."
sleep 5
reboot now
