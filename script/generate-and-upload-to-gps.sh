#!/bin/bash
rm -v *.img *.tdb

#iceland_maps="Island-Topo/7733010[123456].img"
iceland_maps=""
iceland_contours="Island-Topo/7733011[23456].img"
iceland_osm="osm/is/*.img"
#germany_osm="osm/de/*.img baden-wuerttemberg/*.img" # bankholzen/*.img"
germany_osm="baden-wuerttemberg/*.img" # bankholzen/*.img"
#germany_osm=""

java -jar ~/src/mkgmap/dist/mkgmap.jar --latin1 --gmapsupp $iceland_maps $iceland_contours $iceland_osm $germany_osm

mkdir -p /media/GPS/Garmin
sudo cp -v gmapsupp.img /media/GPS/Garmin/
#sudo umount /mnt/gps
