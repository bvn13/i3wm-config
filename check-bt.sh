#!/bin/bash

if [[ $(pactl list short | grep 'bluez_sink.2C_4D_79_47_42_9F') ]]; then
    if [[ $(pactl list short | grep 'bluez_sink.2C_4D_79_47_42_9F.headset_head_unit[^.]') ]]; then
	echo $(pactl list short | grep -e 'bluez_sink.2C_4D_79_47_42_9F.headset_head_unit[^.]' | awk '{print "ZOOM:"$NF}');
    else
	echo 'MUSIC';
    fi
else
    echo 'OFF';
fi
