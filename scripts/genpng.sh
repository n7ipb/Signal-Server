#!/bin/bash
set -e
#
# splat data *.sdf storage
SRTMDIR=~/.splat-data
#
#
#time nice ./signalserver -sdf $SRTMDIR/SRTM3 -dbm -pm 1 -dbg $@ 2>&1
# to resize, add: -resize 7000x7000\>
if [[ $# -eq 0 ]] ; then
	echo Usage:
	echo $0 -lat 46.4879 -lon -123.2144 -txh 60 -f 145 -erp 30 -R 80 -o outfile | ./genkmz.sh
	echo The last argument must be the output file name.
	exit 1
fi

for name; do true; done

# This script should contain options common to every run on the target system.

time signalserverHD -sdf $SRTMDIR -dbm -pm 1  -dbg $@ 2>&1
convert $name.ppm -transparent white -resize 14000x14000 $name.png

