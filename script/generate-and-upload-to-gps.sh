#!/bin/bash
rm -v *.img *.tdb

rm -rfv osm/is osm/de
mkdir -p osm/is osm/de

wget http://osm.nix.is/latest/default/13314530.img  -O osm/is/default.img
wget http://osm.nix.is/berlin/latest/default/13314540.img  -O osm/de/default.img

#iceland_maps="Island-Topo/7733010[123456].img"
iceland_maps=""
iceland_contours="Island-Topo/7733011[23456].img"
iceland_osm="osm/is/*.img"
germany_osm="osm/de/*.img"

java -jar ~/src/mkgmap/dist/mkgmap.jar --latin1 --gmapsupp $iceland_maps $iceland_contours $iceland_osm $germany_osm

#sudo mount /dev/sd?1 /mnt/gps/
mkdir -p /media/gps/Garmin
sudo cp -v gmapsupp.img /media/gps/Garmin/
#sudo umount /mnt/gps
