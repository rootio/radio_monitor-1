#!/bin/bash
if ! (pgrep -f "aplay -f cd --device=$1")
then  
    sudo supervisorctl restart play_headphones
fi 
amixer set Mic 12
amixer set PCM 120
sleep 10

