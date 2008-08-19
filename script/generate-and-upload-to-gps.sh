#!/bin/bash
rm -v *.img *.tdb

mkdir -p osm/is

wget http://osm.nix.is/latest/cyclemap/13314531.img -O osm/is/cyclemap.img
wget http://osm.nix.is/latest/default/13314530.img  -O osm/is/default.img

java -jar ~/src/mkgmap/dist/mkgmap.jar --latin1 --gmapsupp Island-Topo/7733011[23456].img osm/is/*.img

sudo mount /dev/sd?1 /mnt/gps/
sudo cp -v gmapsupp.img /mnt/gps/Garmin/
sudo umount /mnt/gps