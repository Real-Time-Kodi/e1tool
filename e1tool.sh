#!/bin/bash
#This script is intended to switch the Sound Blaster E1 between the internal and external microphone.

for D in /sys/class/hidraw/* ; do
  if [ -d ${D} ]; then
    if grep  -Fq "Creative Technology Ltd Sound Blaster E1" ${D}/device/uevent ;then
      PORT=/dev/$(basename ${D})
      echo "Found Sound Blaster E1 at $PORT"
    fi
  fi
done


echo $port

if [ "$1" == "-i" ]; then
  sudo echo -n -e '\x02\x00' > $PORT # Sets port back to extra 
  echo "Switched to internal microphone."
fi
if [ "$1" == "-e" ]; then
  sudo echo -n -e '\x02\x02' > $PORT # Sets port to microphone mode
  echo "Switched to external microphone."
fi


