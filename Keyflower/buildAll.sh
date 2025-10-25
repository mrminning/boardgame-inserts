#!/bin/sh
include="include<main.scad>;\n"

for result in $(grep module main.scad | sed 's/module //' | sed 's/ {/;/');
do
    filename=$(echo $result | sed 's/();/.scad/');
    if [[ $string == "module"* ]]; then
        echo $include > $filename;
        echo $result >> $filename;
    fi
done

make -f Makefile
