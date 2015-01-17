-----------------------------------
:::::: Desktop
-----------------------------------
# create Icon LDX file : sublime2.desktop
[Desktop Entry]
Name=Sublime Text 2
Comment=Editor Text
Exec=sublime
Icon=/opt/Sublime Text 2/Icon/256x256/sublime_text.png
Terminal=false
Type=Application
Encoding=UTF-8
Categories=Application;Development;
#descomprimir
tar vxjf sublime_text_3_build_3047_x64.tar.bz2
#crear link simbolico in :/usr/local/bin
ln -s /opt/Sublime Text 2/sublime_text /usr/local/bin/sublime
# ABRIR BY DEFAULT SUBLIME
/usr/share/applications/sublime_text.desktop exists.
# OPEN
/usr/share/applications/defaults.list with Sublime:
# CREATE SUBLIME2.DESKTOP IN 
/usr/share/applications/sublime2.desktop
-----------------------------------
:::::: LXDE
-----------------------------------
# CONFIGURAR PCMANFM
.config/pcmanfm/lubuntu
# REINICIAR LXDE
lxpanelctl restart
-----------------------------------
:::::: LXDE SOUND
-----------------------------------
sudo apt-get install xfce4-mixer gstreamer0.10-alsa
alsamixer
#record voice
sudo  apt-get install  sox
sox -t alsa default test.wav
mplayer test.wav
sudo alsa force-reload
# configurar teclado de acceso rapido | shortkeys
## config file : ~/.config/openbox/lubuntu-rc.xml
## refresh settings
openbox --reconfigure
## GUI
obconf
## refresh settings
lxpanelctl restart

# configurar theme en lubuntu
/usr/share/themes
/usr/share/icons
# source
http://gnome-look.org/content/search.php

# Reparar o restaurar default PANEL lubuntu
sudo cp /usr/share/lxpanel/profile/Lubuntu/panels/panel ~/.config/lxpanel/Lubuntu/panels

sudo chown owner:group  ~/.config/lxpanel/Lubuntu/panels/panel
lxpanelctl restart

# limpiar carpetas recientes : pcmanfm
 echo > ~/.local/share/recently-used.xbel

