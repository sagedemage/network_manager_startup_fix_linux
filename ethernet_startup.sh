#!/bin/bash
output=$(nmcli con show "Profile 1" | grep "GENERAL.STATE")
if [[ $output == "" ]]; then
	nmcli dev connect enp3s0
fi
