# disable wifi
sudo rfkill block wifi
# enable wifi
sudo rfkill unblock wifi



#
# Install raspberry by terminal (LAN)
#

#  /etc/wpa_supplicant/wpa_supplicant.conf

# 01 crete the file wpa_supplicant.conf into: **boot** partition
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
country=PE

network={
	ssid="MOVISTAR_A141"
	psk="RyEjke5GnfGUENCMK2Fr"
	key_mgmt=WPA-PSK
}

network={
	ssid="iPhone"
	psk="123456789"
	key_mgmt=WPA-PSK
}

network={
        ssid="MOVISTAR_A141_INVITADO"
        psk="movistara141invitado"
        key_mgmt=WPA-PSK
}

# 02 create access ssh (by install defaul all port are closed)
# test comand: nmap <192.168.1.27>
touc ssh