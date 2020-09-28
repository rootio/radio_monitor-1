#!/bin/bash
ncat $1 $2 | lame -r -b $3 - $4/$(date +%F_%T).mp3
