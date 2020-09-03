#!/bin/bash

# We need to poll upower, then branch into options, one for discharging, one for charging. We will use /org/freedesktop/UPower/devices/DisplayDevice

UPOWER_POLL="upower -i /org/freedesktop/UPower/devices/DisplayDevice"
charging_state=$( $UPOWER_POLL | awk -F ' '  '/state/ { print $2 }')
charging_percentage=$( $UPOWER_POLL | awk -F ' ' '/percentage/ { print $2 }' | awk -F '.' '{ print $1 }')

if [[ $charging_state == "charging" ]]; then
    echo "C: $charging_percentage%"
elif [[ $charging_state == "fully-charged" ]]; then
    echo "FULL"
elif [[ $charging_state == "discharging" && $charging_percentage -le 5 ]]; then
    notify-send --urgency=critical "Battery Critical!" "Please plug in charger"
    echo "D: $charging_percentage%"
elif [[ $charging_state == "discharging" ]]; then
    echo "D: $charging_percentage%"
fi
