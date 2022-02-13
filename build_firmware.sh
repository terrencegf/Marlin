#!/bin/bash

DATE=`date +%F_%H-%M`
platformio run -e rambo
scp -o port=9022 .pio/build/rambo/firmware.hex \
    tfleury@192.168.0.3:/cygdrive/c/xfer/firmware-${DATE}.hex
pio system prune -f
