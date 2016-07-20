#!/bin/bash

if [ ! -f /sys/class/thermal/thermal_zone1/mode ]; then
    echo "Module acerhdf tidak ada";
    exit 0;
fi

status=`cat /sys/class/thermal/thermal_zone1/mode`

if [ $status == 'disabled' ]; then
    status="enabled";
    echo "Fan: ON";
else
    status="disabled";
    echo "Fan: OFF";
fi

echo -n $status > /sys/class/thermal/thermal_zone1/mode
