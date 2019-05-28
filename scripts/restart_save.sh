#!/bin/bash
echo $(date)
SLEEP_TIME=$((60*(59-$(date +%M))+59-$(date +%S)))
echo "going to sleep for $SLEEP_TIME seconds"
sudo supervisorctl restart save_to_mp3 
sleep $SLEEP_TIME

