#!/bin/sh
include="include<../main.scad>;\n"

if [ ! -d "stl" ]; then
    mkdir stl
fi

for result in $(grep module main.scad | sed 's/module //' | sed 's/ {/;/');
do
filename="stl/"$(echo $result | sed 's/();/.scad/');
echo $include > $filename;
echo $result >> $filename;
done

make -f Makefile
