#!/bin/sh
include="include<main.scad>;\n"

for result in $(grep module main.scad | sed 's/module //' | sed 's/ {/;/'); 
do 
filename=$(echo $result | sed 's/();/.scad/');
echo $include > $filename;
echo $result >> $filename;
done

make -f Makefile
