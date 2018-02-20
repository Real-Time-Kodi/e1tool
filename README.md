# SoundBlaster E1 Tool
The E1 Tool script is intended to allow linux users to make full use 
of the Creative Technology Ltd Sound Blaster E1. It currently allows 
switching the secondary port between input and output mode.

## Usage
Currenltly the script has 2 commands:
```
sudo e1tool.sh -e
```
Puts the second port into microphone mode, disabling the internal 
microphone.
```
sudo e1tool.sh -i
```
Puts the second port back into headphones mode. This also re-enables 
the internal microphone of the SoundBlaster E1.
