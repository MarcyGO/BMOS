# launch our autostart apps (if we are on the correct tty)
if [ "`tty`" = "/dev/tty1" ] && [ "$USER" = "bmo" ]; then
    bash "/home/bmo/bmos/scripts/bmos.sh"
fi
