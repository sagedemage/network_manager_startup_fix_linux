#!/bin/bash
ssid="Kamla-5G"
output=$(nmcli con show $ssid | grep GENERAL.STATE)
if [[ $output == "" ]]; then
	nmcli dev wifi connect $ssid
fi
