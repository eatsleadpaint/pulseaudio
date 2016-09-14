#!/usr/bin/bash
# nu11secur1ty - http://nu11secur1ty.blogspot.com/
# Taken from: https://github.com/nu11secur1ty/pulseaudio



##### Running pulseaudio autostart ~ gui desktop audio
echo -e "\n\e[01;32m[+]\e[00m Preparing pulseaudio"
         file=/usr/local/bin/pulseaudio.sh; [ -e $file ] && cp -n $file{,.bkup}
echo -e '#!/bin/bash\ntimeout 10 pulseaudio -D\nsleep 15\ exit 0;' > $file
chmod 0500 $file
mkdir -p /root/.config/autostart/
         file=/root/.config/autostart/pulseaudioscript.sh.desktop; [ -e $file ] && cp -n $file{,.bkup}
echo -e '\n[Desktop Entry]\nType=Application\nExec=/usr/local/bin/pulseaudio.sh\nHidden=false\nNoDisplay=false\nX-GNOME-Autostart-enabled=true\nName[en_US]=pulseaudio\nName=pulseaudio\nComment[en_US]=\nComment=' > $file
      sleep 5;
echo "After reboot your system everything will be ok with your audio controller. Have fun with nu11secur1ty -;)"
exit 0;

