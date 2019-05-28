#!/bin/bash
if [ $(pgrep -f "SCREEN -S csiksshserver") ] 
then  
    echo "there"
else  
    echo "no there, starting"
    screen -S csiksshserver -d -m sshpass -p pleasuretelloriginalsalmon ssh -N -R 19997:localhost:22 adriano@176.58.125.166
fi
sleep 10

