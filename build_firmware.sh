#!/bin/bash

# Optional command line argument 'update'
if [[ -n $1 && $1 == 'update' ]] ; then
    pio upgrade
    pio pkg update
fi

DATE=`date +%F_%H-%M`
platformio run -e rambo
scp .pio/build/rambo/firmware.hex \
    tfleury@mud.fleury.tv:xfer/firmware-${DATE}.hex
pio system prune -f
