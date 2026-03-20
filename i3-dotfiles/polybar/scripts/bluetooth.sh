#!/bin/bash

# Check power state
if bluetoothctl show | grep -q "Powered: yes"; then

    # Check connected device
    device=$(bluetoothctl info | grep "Name" | cut -d ' ' -f2-)

    if [ -n "$device" ]; then
        echo " $device"
    else
        echo " Not connected"
    fi

else
    echo " Off"
fi
