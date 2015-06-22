#-----------------------------------
#:::::: Install basic
#-----------------------------------
sudo apt-get install ubuntu-restricted-extras
# in terminal
sudo apt-get install nautilus-open-terminal
nautilus -q
#-----------------------------------
#:::::: desintalar programa
#-----------------------------------
sudo apt-get remove google-chrome-stable 
sudo apt-get purge google-chrome-stable 
sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove
#list of repositories intall
/etc/apt/source.list
#-----------------------------------
#:::::: Install tool
#-----------------------------------
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
sudo pip install --upgrade youtube-dl ## actualizar youtube-dl OK
#-----------------------------------
#:::::: Tool SO tool
#-----------------------------------
# VERSION DE UBUNTU
lsb_release -a
uname -a
# ARQUITECTURA SO
uname -m
#-----------------------------------
#:::::: imagemagick
#-----------------------------------
# URL
# BASIC
@http://www.imagemagick.org/Usage/thumbnails/ 
convert example.png -resize 500×500 example.png
# BASIC DEFORMA IMAGEN TAMANIO EXACTO
convert example.png -resize 500×500! example.png
# QUALITY
convert sansung.png -resize 500x500 -quality 70 out.quality.70.jpg
# THUMBNAIL
convert sansung.png -thumbnail 500x500 -background  black -gravity center -extent 500x500 end.jpg
# THUMBNAIL PERFECT! (FIT)
convert -define jpeg:size=337x290 sansung.png  -thumbnail 500x500^ -gravity center -extent 500x500  cut_to_fit.gif
# scrot
scrot -s -t 65 -q 100
#-----------------------------------
#:::::: APPS INSTALL
#-----------------------------------
wget and aria => manager dowloader

#-----------------------------------
#:::::: install tar
#-----------------------------------
./configure
make
sudo make install
#-----------------------------------
#:::::: Add repositorio ubuntu
#-----------------------------------
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
# 1. install sox
rec -b 32 -r 192000 myvoice.wv
# 2. sox better
sox -t alsa default test.wav
mplayer test.wav

# instalar TAR
 - descomprimier # tar xvf archivo.tar
 - ./configure
 - make
 - sudo make install
# cofigurar bluetooh tool
sudo apt-get install bluez-utils
hcitool dev # ver dispositivos (see devices)
#-----------------------------------
#:::::: grabar escritorio
#-----------------------------------
# instalar  ffmpeg in ubuntu : descargar tar.gz
# descomprimir e instalr(TAR)
# grabar video con recordMyDesktop -> return out.ogv
# convertir a .MKV because error to format direct MP4
./ffmpeg -i input.ogv -c:v huffyuv -c:a pcm_s16le output.mkv # .mkv
# -vcodec : videoCodec
ffmpeg -i out-3.ogv -q:v 3 avi.avi # camtasia  *hight-quality* convert .avi
ffmpeg -i out-3.ogv  -vcodec mpeg4 avi.avi # low *low-quality* and many weidth .avi

# acodec : audioCodec
ffmpeg -i input -acodec pcm_s32le yo.wav # camtasia pcm_s32le: s32le, pcm_s16le : s16le
ffmpeg -i wav.wav -f mp2 output.mp3
#-----------------------------------
#:::::: buscar en ubuntu 
#-----------------------------------
dpkg -L php-pear
# copiar bin local
/usr/bin
/usr/local/bin # recommended
#-----------------------------------
#:::::: install mkvextract 
#-----------------------------------
sudo apt-get install mkvtoolnix
# extraer track srt (buscar)
# mkvextract tracks friends.s05e01.720p.bluray.x264-mrs.sujaidr.mkv 2:srt2.srt
mkvextract tracks <your_mkv_video> <track_numer>:<subtitle_file.srt>
# error ubuntu cuando bloquea
sudo rm /var/cache/debconf/*.dat
#-----------------------------------
#:::::: INSTALAR SERVIDOR APACHE Y MYSQL
#-----------------------------------
sudo apt-get install tasksel
sudo tasksel install lamp-server
# rewrite apache
sudo a2enmod rewrite && sudo service apache2 restart
# in : /etc/apache2/sites-available (habilitar sobreescritura)
# <Directory /var/www/>
# before :
AllowOverride None
# after :
AllowOverride all 

## install poedit
sudo apt-get install poedit