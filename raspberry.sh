# disable wifi
sudo rfkill block wifi
# enable wifi
sudo rfkill unblock wifi



#  /etc/wpa_supplicant/wpa_supplicant.conf
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

