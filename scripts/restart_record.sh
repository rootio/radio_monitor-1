#!/bin/bash
if ! (ps -e | grep arecord)  
then
 sudo supervisorctl restart recorder_source 
fi 
amixer set Mic 12
amixer set PCM 120
sleep 10

