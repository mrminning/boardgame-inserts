#!/bin/sh
include="include<BoardGameSystem.scad>;\n"

for result in $(grep module BoardGameSystem.scad | sed 's/module //' | cut -d'(' -f 1);
do
echo $result
if [ "$result" != "hexPlane" ] && [ "$result" != "roundedBox" ]; then
    #result=$result"();"
    filename="$result.scad"
    outfile="$result.png"
    echo $include > $filename;
    echo $result"();" >> $filename;
    openscad --render -o "images/$outfile" $filename
    rm -f $filename
fi
done
