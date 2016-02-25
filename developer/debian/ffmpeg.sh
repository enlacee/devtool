##-----------------------
## FFMPEG
##-----------------------
# (1) dependencias (ubuntu)
https://trac.ffmpeg.org/wiki/CompilationGuide/Ubuntu
# (2) dependencias (libfaac)
apt-get install libfaac-dev
sudo apt-get update
sudo apt-get -y install build-essential checkinstall git libfaac-dev libgpac-dev \
  libjack-jackd2-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev \
  libsdl1.2-dev libtheora-dev libva-dev libvdpau-dev libvorbis-dev libx11-dev \
  libxfixes-dev texi2html yasm zlib1g-dev
# (3) dependencias (x264)
# (4) dependencias (FFmpeg)
# (5) install yasm (revisar aws)

# instalar  ffmpeg in ubuntu : descargar tar.gz
# descomprimir e instalar(TAR)
# grabar video con recordMyDesktop -> return out.ogv
# convertir a .MKV because error to format direct MP4
./ffmpeg -i input.ogv -c:v huffyuv -c:a pcm_s16le output.mkv # .mkv
# -vcodec : videoCodec
ffmpeg -i out-3.ogv -q:v 3 avi.avi # camtasia  *hight-quality* convert .avi
ffmpeg -i out-3.ogv  -vcodec mpeg4 avi.avi # low *low-quality* and many weidth .avi

# acodec : audioCodec
ffmpeg -i input -acodec pcm_s32le yo.wav # camtasia pcm_s32le: s32le, pcm_s16le : s16le
ffmpeg -i wav.wav -f mp2 output.mp3
#
#-----------------------------------
#:::::: PROYECTO WEB : Fusionar video y audio MP4
#-----------------------------------
# video (ok) [webm to mp4]
ffmpeg -i video.webm -q:v 3 avi.avi
ffmpeg -i avi.avi -acodec libfaac -b:a 128k -vcodec mpeg4 -b:v 1200k -flags +aic+mv4 mp4.mp4
# audio (ok)[mp3 to m4a]
ffmpeg -i sonido.mp3 -acodec pcm_s32le wav.wav
ffmpeg -i wav.wav -f mp2 m4a.m4a
# video+audio (ok)
# ffmpeg -i avi.avi -i wav.wav -c:v copy -c:a copy output.avi (pesado)
ffmpeg -i mp4.mp4 -i m4a.m4a -c:v copy -c:a copy output.mp4
#
# video+audio (ok) fusionado (cuando el mas corto termine!)
ffmpeg -i mp4.mp4 -i m4a.m4a -c:v copy -c:a aac -strict experimental -shortest output.mp4

## combinar archivos mp3
ffmpeg -f concat -i <(for f in ./*.mp3; do echo "file '$PWD/$f'"; done) -c copy output.mp3
