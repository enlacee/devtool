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
# ===========================================

####
#### NOTE : configuration Example setting
export HOME="/home/indranil"
export ANDROID_HOME="$HOME/software/adt-bundle-linux-x86_64-20140702/sdk"
export PATH="$HOME/software/adt-bundle-linux-x86_64-20140702/sdk/tools:$ANDROID_HOME/platform_tools:$PATH"
# It's necessary install in sdk android: shell : android
# install checkbox : Android 4.4.2(API19)          => target default



## Install Android SDK
# 01
 vi ~/.profile
# 02
export PATH="$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platforms:$PATH"
# 03 : install java and ant
sudo apt-get install openjdk-6-jdk ant
# 04 : init android and install APIS
android
# 05 : new folder create called platform-tools
PATH="$HOME/android-sdk-linux/tools:$HOME/android-sdk-linux/platforms:$HOME/android-sdk-linux/platform-tools:$PATH"
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













###
@=http://yaizabailen.com/setting-up-an-android-app-build-environment-with-android-sdk-and-phonegap-in-ubuntu-13-04/#prettyPhoto