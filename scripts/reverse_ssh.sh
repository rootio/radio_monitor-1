#!/bin/bash
if [ $(pgrep -f "SCREEN -S radiosshserver") ] 
then  
    echo "Screen session already exists"
else  
    echo "Screen session non-existent, proceeding to create it"
    screen -S radiosshserver -d -m sshpass -p $1 ssh -N -R $2:$3:$4 $5@$6
fi
sleep 10

