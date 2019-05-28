#!/bin/bash
if ! (pgrep -f "aplay -f cd --device=plughw:1,0")
then  
    sudo supervisorctl restart play_headphones
fi 
amixer set Mic 12
amixer set PCM 120
sleep 10

