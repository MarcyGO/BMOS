if ! pidof -x aplay > /dev/null
then
   /usr/bin/aplay -D default -t raw -r 48000 -c 2 -f S16_LE  /dev/zero &
fi

touch /home/bmo/bmos/parade/parade.txt

/home/bmo/bmos/scripts/armsinit.sh
/home/bmo/bmos/scripts/armsupslow.sh &
omxplayer --aspect-mode fill --layer 10010 -o alsa --no-keys --no-osd /home/bmo/bmos/videos/intro.mp4 > /dev/null &

cd /home/bmo/bmos/
/home/bmo/bmos/bmos
