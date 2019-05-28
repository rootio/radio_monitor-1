#!/bin/bash
if ! (ps -e | grep ezstream)  
then
 sudo supervisorctl restart icecast_stream 
fi 
sleep 10

