## Install phonegap
sudo apt-get install nodejs
sudo npm install -g phonegap
sudo phonegap create my-app-phonegap

## Install CORDOVA
# step 01 : install repository
sudo add-apt-repository ppa:cordova-ubuntu/ppa
sudo apt-get update
# step 02 : cli
sudo apt-get install cordova-cli
# step 03 : create project
cordova create hello-word com.example.hello HelloWorld
#1: hello-word name of application
#2: com.example.hello nameSpace of application
# step 04 : platform
cordova platform add android
cordova platform add ios
## step 05: test app in platform
cordova build android
cordova emulate android
# Note los directorios de phonegap estan [platforms/ios, platforms/android]
## Alternative : error to create cordova platform Unstaller and Install again
npm uninstall -g cordova
# util ver plataformas
cordova platforms ls
# ===========================================
# creating app with name Professional
phonegap create path/to/my-app --id "com.example.app" --name "My App"
#example
cordova create /home/anb/sites/develoweb/appabc --id "com.develoweb.appabc" --name "ABC Play Kids"
####
#### NOTE : configuration Example setting
export HOME="/home/indranil"
export ANDROID_HOME="$HOME/software/adt-bundle-linux-x86_64-20140702/sdk"
export PATH="$HOME/software/adt-bundle-linux-x86_64-20140702/sdk/tools:$ANDROID_HOME/platform_tools:$PATH"
# It's necessary install in sdk android: shell : android
# install checkbox : Android 4.4.2(API19)          => target default



## Install Android SDK
# 01
 vi ~/.bashrc # or .profile
# 02
export PATH="$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platforms:$PATH"
# 03 : install java and ant
sudo apt-get install openjdk-6-jdk ant
# 04 : init android and install APIS
android
# 05 : new folder crexport PATH="$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platforms:$HOME/android-sdk-linux/platform-tools:$PATH"
# 06 : install the adb package. (comand line) (comunique with emulador)
sudo apt-get install android-tools-adb
# 07 : if you machine is 64 bit
sudo apt-get install lib32stdc++6 ia32-libs

## Create an AVD (Android Virtual Device) : It's a emulator of divice
# 01 : firt list of system images available 'ids'
android list targets
# 02 : create ADV 'android create avd -n -t'
android create avd -n myAndroid -t android-18
# 03 : 
emulator -avd myAndroid
# 04 : delete
android delete avd -n myAndroid
# 05 : DEBUG
adb logcat

# recurso INTEL better That jquery-mobile


### install APLICACION EN Emulador cuando tenemos un divice ejecutado
adb install miapp.apk
## desintalar
adb uninstall <package>

#### install en mac
npm install -g cordova


### install MC
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  503  brew doctor
  504  brew install ant
  505  cordova build android

# landspace
CTRL+F11

#######################
# in MAC
#######################
# landspace
vista horizontal => ctrl-fn-F12.
improve landscape mode transition
####
export PATH=${PATH}:/Users/Bitalik/Documents/Applications/android-sdk-macosx/platform-tools:/Users/Bitalik/Documents/Applications/android-sdk-macosx/tools




###
@=http://yaizabailen.com/setting-up-an-android-app-build-environment-with-android-sdk-and-phonegap-in-ubuntu-13-04/#prettyPhoto



###########################################################################   
### Firmar tu apliación por comandos

# paso 2 : compilar tu aplicacion .APK para obtener unsigned APK. /var/www/public_html/app-abc
cordova build android --release

# paso 1
keytool -genkey -v -keystore my-release-key.keystore -alias abc -keyalg RSA -keysize 2048 -validity 10000

# paso 3 : copia tu APK en donde ejecutaras esta linea  o ubicate dentro de la capeta que contiene tu [appliaction-release-unsignig.apk]
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore app.apk abc 

# paso 4 : verificar si tu apk esta firmado
jarsigner -verify -verbose -certs app.apk

# paso 5 : Optimizacion (no fue probado)
zipalign -v 4 your_project_name-unaligned.apk your_project_name.apk


### agregar plugin en cordova
cordova plugin add https://github.com/brodysoft/Cordova-SQLitePlugin.git
### plugin cordova googlemap
https://github.com/wf9a5m75/phonegap-googlemaps-plugin



###########
# update android
###########
cordova platform update android

## nota not find * zipalign *
http://stackoverflow.com/questions/24442213/cannot-find-zip-align-when-publishing-app
# hacer: sdk/build-tools/android-4.4W folder to sdk/tools/
# referencia: en Android SDK Build-tools 20