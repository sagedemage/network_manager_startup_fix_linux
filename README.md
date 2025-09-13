# wifi_startup_fix_linux

For some reason, NetworkManager has a bug where it can't connect to my chosen Wi-Fi automatically. 
I have this issue on Fedora. This is a workaround to resolving this issue.

## The Workaround

For Gnome, go to Settings -> Wi-Fi. Click on the gear of the chosen Wi-Fi network. 
Make sure that "Connect automatically" is unchecked.

![Network Options](./images/network_options.png)

Get the SSID of your Wi-Fi
```
nmcli device wifi list
```

Change the ssid variable to the SSID of your Wi-Fi in the `wifi_startup.sh` script.

Copy the Wi-Fi startup script to `~/.local/bin`
```
cp wifi_startup.sh ~/.local/bin/wifi_startup.sh
```

Add this line to the file, `~/.bash_profile`
```
echo "~/.local/bin/wifi_startup.sh" >> ~/.bash_profile
```

Reboot the PC and your chosen Wi-Fi should connect automatically.
