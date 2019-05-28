#!/bin/bash
ncat 127.0.0.1 1234 | lame -r -b 192 - | ezstream -c $MONITOR_DIR/ezstream_stdin.xml
