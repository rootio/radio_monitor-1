#!/bin/bash
ncat $1 $2 | lame -r -b $3 - | ezstream -c $4
