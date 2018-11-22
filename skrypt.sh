#!/bin/bash

function setLED
{
echo $1 > "sys/class/leds/led0/brightness"
}


if [ $1 == "on" ]; then
        echo "led ON"
        set setLED 1
elif [ $1 == "off" ]; then
        echo "led OFF"
        set setLED 0
fi


if [ $2 == "blink" ]; then
        while true  ; do
		setLED 1
		sleep 5
		setLED 0
		sleep 5
	done
fi


	
