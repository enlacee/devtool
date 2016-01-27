### ANDROID

### usar o install gradle
#::: instalar entrando al proyecto
./gradlew tasks
### Intalar aplicacion a mano
### por comandos

# 01 ::: configurar
chmod  +x gradlew
./gradlew assembleDebug
# 02 ::: instalar a mano
adb install -r app/build/outputs/apk/app-debug-unaligned.apk
# 03 :::
adb shell am start -n com.example.android.sunshine.app/com.example.android.sunshine.app.MainActivity




### fuentes

* [Aprender android curos en español](http://www.sgoliver.net/blog/curso-de-programacion-android/indice-de-contenidos/)

* [Hermosa Programacion](http://www.hermosaprogramacion.com/)
