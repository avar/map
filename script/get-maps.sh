#!/bin/sh

rm -v *.img *.tdb

rm -rfv osm/is osm/de
mkdir -p osm/is osm/de

wget http://osm.nix.is/latest/default/13314531.img  -O osm/is/default.img
#wget http://osm.nix.is/berlin/latest/default/13314540.img  -O osm/de/default.img
