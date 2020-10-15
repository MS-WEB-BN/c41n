#!/bin/bash

rm config/sample.conf
if [ -x "$(command -v pacman)" ]; then
	pacman -Sy net-tools hostapd dnsmasq tcpflow
elif [ -x "$(command -v apt)" ]; then
	apt install net-tools hostapd dnsmasq tcpflow
fi
