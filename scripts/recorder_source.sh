#!/bin/sh 
sudo kill -9 $(pgrep -f "arecord") $(pgrep -f "ncat --broker")
arecord -f cd --device=plughw:1,0 | ncat --broker -l -p  1234
amixer set Mic 12
amixer set PCM 120

