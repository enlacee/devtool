-----------------------------------
:::::: Install basic
-----------------------------------
sudo apt-get install ubuntu-restricted-extras
|
# in terminal
sudo apt-get install nautilus-open-terminal
nautilus -q
-----------------------------------
:::::: desintalar programa
-----------------------------------
sudo apt-get remove google-chrome-stable 
sudo apt-get purge google-chrome-stable 
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove
#list of repositories intall
/etc/apt/source.list
-----------------------------------
:::::: Install tool
-----------------------------------
# YOUTUBE
#install ppa
sudo apt-add-repository ppa:nilarimogard/webupd8
sudo apt-get update
sudo apt-get upgrade
dpkg -l|grep youtube-dl
#install
sudo apt-get install youtube-dl
sudo apt-get install python-setuptools
sudo easy_install pip
sudo pip install --upgrade youtube-dl
# APPLICATION UTIL
youtube-dl => descarga video
wkhtmltopdf => de html a pdf :  wkhtmltopdf http file.pdf
imagemagick => iamgen manage in linux
-----------------------------------
-----------------------------------
:::::: Install App
-----------------------------------
# first
vim
ssh
sublime-text
phpStorm
remarkable => editor markdown
shutter => scream shot desktop
guake => terminal
transmission => client torrent
recordmydesktop
# second
vlc
alarm clock
filezilla => ftp managers
virtual box => machine OS virtual
wine
skype
# third


:::::: Tool SO tool
-----------------------------------
# VERSION DE UBUNTU
lsb_release -a
uname -a
# ARQUITECTURA SO
uname -m
-----------------------------------
:::::: imagemagick
-----------------------------------
# URL
@http://www.imagemagick.org/Usage/thumbnails/ 
# BASIC
convert example.png -resize 500×500 example.png
# BASIC DEFORMA IMAGEN TAMANIO EXACTO
convert example.png -resize 500×500! example.png
# QUALITY
convert sansung.png -resize 500x500 -quality 70 out.quality.70.jpg
# THUMBNAIL
convert sansung.png -thumbnail 500x500 -background  black -gravity center -extent 500x500 end.jpg
# THUMBNAIL PERFECT! (FIT)
convert -define jpeg:size=337x290 sansung.png  -thumbnail 500x500^ -gravity center -extent 500x500  cut_to_fit.gif

-----------------------------------
:::::: APPS INSTALL
-----------------------------------
wget and aria => manager dowloader

-----------------------------------
:::::: install tar
-----------------------------------
./configure
make
sudo make install
-----------------------------------
:::::: Install programa edicion SRT video
-----------------------------------
aegisub => creador editor de SRT OR ASS
subdownloader => dowloader subtitle for videos
Gaupol => Subtitle editor or export format ass to srt easy
-----------------------------------
:::::: Add repositorio ubuntu
-----------------------------------
# source repositorie
/etc/apt/sources.list
# add repositories by synaptic
setting
# add repositories and key by terminal
sudo add-apt-repository "http://ppa.launchpad.net/mc3man/gstffmpeg-keep/ubuntu trusty main"
sudo add-apt-repository ppa:gwibber-daily/ppa

#reproducir musica por terminal
mplayer
# grabar voz SOX

# instalar TAR
 - descomprimier
 - ./config
 - make
 - sudo make install
# cofigurar bluetooh tool
sudo apt-get install bluez-utils
hcitool dev # ver dispositivos (see devices)
-----------------------------------
:::::: grabar escritorio
-----------------------------------
# instalar  ffmpeg in ubuntu : descargar tar.gz
# descomprimir e instalr(TAR)
# grabar video con recordMyDesktop -> return out.ogv
# convertir a .MKV because error to format direct MP4
./ffmpeg -i input.ogv -c:v huffyuv -c:a pcm_s16le output.mkv # .mkv
# -vcodec : videoCodec
ffmpeg -i out-3.ogv -q:v 3 avi.avi # best convert .avi
ffmpeg -i out-3.ogv  -vcodec mpeg4 avi.avi # .avi

# acodec : audioCodec
ffmpeg -i input -acodec pcm_s32le yo.wav # pcm_s32le: s32le, pcm_s16le : s16le




