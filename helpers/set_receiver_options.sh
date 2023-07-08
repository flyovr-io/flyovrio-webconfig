#!/bin/bash

if [[ "$1" == "/boot/flyovrio-env" ]] || [[ "$1" == "/boot/flyovrio-978env" ]]; then
    sed -i -e "s|^RECEIVER_OPTIONS=.*$|RECEIVER_OPTIONS=\"$2\"|" "$1"
fi
