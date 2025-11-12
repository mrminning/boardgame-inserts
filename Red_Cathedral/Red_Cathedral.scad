include<main.scad>;

cardBox();

translate([0, 13, 0])
playerBox();

translate([0, 58, 0])
playerBox();

translate([60, 13, 0])
playerBox();

translate([60, 58, 0])
playerBox();

translate([120, 13, 0])
coinsGemsBox();

translate([120, 13, 15])
coinsGemsBox();

translate([171, 13, 0])
dice();

translate([194, 13, 0])
workshopTiles();

translate([0, 103, 0])
resourcesBox();
