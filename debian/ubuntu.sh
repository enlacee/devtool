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