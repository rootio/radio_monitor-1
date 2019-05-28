#!/bin/bash
ncat 127.0.0.1 1234 | lame -r -b 192 - $MONITOR_DIR/recordings/$(date +%F_%T).mp3
