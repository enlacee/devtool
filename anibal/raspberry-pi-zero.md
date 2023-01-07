#
@https://github.com/pi-hole/pi-hole/#one-step-automated-install



# cambiar clave de pi-hole

	pihole -a -p

# revisar el el servidor local DNS
( nmcli dev list || nmcli dev show ) 2>/dev/null | grep DNS
