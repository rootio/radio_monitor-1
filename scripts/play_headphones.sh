#!/bin/sh 
ncat 127.0.0.1 1234 |  aplay -f cd --device=plughw:1,0
amixer set PCM 120
amixer set Mic 12

