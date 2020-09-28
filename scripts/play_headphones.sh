#!/bin/sh 
ncat $1 $2 |  aplay -f cd --device=$3
amixer set PCM 120
amixer set Mic 12

