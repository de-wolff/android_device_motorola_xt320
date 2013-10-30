#! /bin/sh
VENDOR=motorola
DEVICE=xt320
cd ../../../vendor/$VENDOR/$DEVICE/proprietary/
find . -type f |cut -b3- > ../../../../device/$VENDOR/$DEVICE/proprietary-files.txt
cd ../../../../device/$VENDOR/$DEVICE/
