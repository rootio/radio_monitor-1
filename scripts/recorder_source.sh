#!/bin/sh 
sudo kill -9 $(pgrep -f "arecord") $(pgrep -f "ncat --broker")
arecord -f cd --device=$1 | ncat --broker -l -p $2
amixer set Mic 12
amixer set PCM 120

