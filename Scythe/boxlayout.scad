include<main.scad>;

// Bottom layer 304mm
color("white")
cube([box_length, box_width, 0.1]);

// Lane 1
playerBox();
translate([85,0,0])
playerBox();
translate([170,0,0])
playerBox();
translate([255,0,0])
playerBox();
// Faction mats x5 250x90x10 (standing upright)
translate([341,0,0])
cube([10, 250, 90]);

// Lane 2
translate([0, 130.5,0])
playerBox();
// Resources
translate([85,130.5,0])
resourceBox();
// Money
translate([170,130.5,0])
resourceBox();
translate([341,130.5,0])
rotate([0,0,90])
encountercardsBox();
// Gutter
translate([171,261,0])
midsizecardsBox();
translate([0,261,0])
encountertokensBox();

// Top layer 304mm
color("white")
translate([0,300,0])
cube([box_length, box_width, 0.1]);

// Player mats x5 280x110x18
translate([0,303,0])
cube([110, 280, 18]);

// Structure bonus tiles, Faction tile, Combat Cards
translate([111,300,0])
structureBox();

translate([111,381.5,0])
dialsCardsBox();
