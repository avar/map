#!/bin/sh
/home/avar/src/osm/applications/utils/osmosis/trunk/bin/osmosis \
    --read-xml baden-wuerttemberg.osm.bz2 --tee 1 \
    --bounding-box top=48.07440873478364 bottom=47.90713721964109 left=7.6739501953125 right=8.0145263671875 \
    --write-xml baden-wuerttemberg-freiburg.osm
#     --bounding-box top=48.00094957553023 bottom=47.56170075451973 left=8.39630126953125 right=9.327392578125 \
