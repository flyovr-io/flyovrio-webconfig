#!/bin/bash

restartIfEnabled() {
    # check if enabled
    if systemctl is-enabled "$1" &>/dev/null; then
            systemctl restart "$1"
    fi
}

systemctl restart webconfig

flyovrio-first-run

services="readsb dump978-fa flyovrio-978 flyovrio-feed flyovrio-mlat webconfig leds"
for service in $services; do
    restartIfEnabled $service
done
