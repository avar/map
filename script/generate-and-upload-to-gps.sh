#!/bin/bash
rm -v *.img *.tdb

rm -rfv osm/is
mkdir -p osm/is

wget http://osm.nix.is/latest/default/13314530.img  -O osm/is/default.img
#wget http://osm.nix.is/latest/routeable/13314532.img  -O osm/is/routeable.img
#wget http://osm.nix.is/latest/cyclemap/13314531.img -O osm/is/cyclemap.img


#iceland_maps="Island-Topo/7733010[123456].img"
iceland_maps=""
iceland_contours="Island-Topo/7733011[23456].img"
iceland_osm="osm/is/*.img"

java -jar ~/src/mkgmap/dist/mkgmap.jar --latin1 --gmapsupp $iceland_maps $iceland_contours $iceland_osm

#sudo mount /dev/sd?1 /mnt/gps/
sudo cp -v gmapsupp.img /media/disk/Garmin/
#sudo umount /mnt/gps
