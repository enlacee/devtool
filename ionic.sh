## create application

ionic start myApp blank --type=angular



# Using Capacitor with Ionic
ionic integrations enable capacitor
npx cap init

ionic build ## build on www
######
npx cap add android
npx cap open android
## add on capacitor.config.json
	{
		"linuxAndroidStudioPath": "/usr/local/android-studio/bin/studio.sh"
	}
######
npx cap copy
npx cap open

###### Progressive Web Apps in Angular (PWA)
	ng add @angular/pwa
# facebook login
	npm i --save @rdlabo/capacitor-facebook-login
#
# Copy all changes to Android platform
$ npx cap sync
