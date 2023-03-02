#!/bin/bash

# Optional command line argument 'update'
if [[ -n $1 && $1 == 'update' ]] ; then
    pio upgrade
    pio pkg update
fi

DATE=`date +%F_%H-%M`
platformio run -e rambo
scp -o port=9222 .pio/build/rambo/firmware.hex \
    tfleury@yak.fleury.tv:/cygdrive/c/xfer/firmware-${DATE}.hex
pio system prune -f
