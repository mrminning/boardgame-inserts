// Scythe
include <../lib/BoardGameSystem.scad>;

box_length = 351; 
box_width = 287;
box_height = 49; // 96 without game boards and rules. 49-54
empty_box_height = 96;
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = 200;


// Game boards x2: Total size
main_board_height = 34;
main_board_width = 272;
main_board_length = 312;
// Hex maps x4
map_boards_height = 34;
map_boards_width = 272;
map_boards_length = 312; 

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
echo (box_width-130*2);


// Player boxes x5 (Faction components and minis)
module playerBox() {
    player_box_height = 40;
    player_box_width = 84.5;
    player_box_length = 130;
    color("blue")
    tokenBoxDividers(size=[player_box_width, player_box_length, player_box_height], hexBottom=no_hex, corner=3, containersX=[31]);
    color("blue")
    translate([31,56,0]) cube([player_box_width-31,wallThickness,player_box_height]);
}


module encountercardsBox() {
    player_box_height = 40;
    player_box_width = 84.5;
    player_box_length = 130;
    color("pink")
    cardBox(size=[player_box_length, player_box_width, player_box_height], containers=1, cutoutWidth=40, corner=3,txtLabel="Encounter cards", txtSize=8, txtFont="Arial");
}

module midsizecardsBox() {
    // Cards: Objectives, Solo 57x87
    color("pink")
    cardBox(size=[87*2+6, 25, 57+4], containers=2, cutoutWidth=30, corner=3);

}
// Cards: Combat 45x66
// Cards: Encounters, Factory, Quickstart, River walk cards
//translate([0, 161 ,0])
//tokenBox(size=[box_width, 74, layer1_low_height], hexBottom=no_hex, corner=3, containersX=4, containersY=1);

// Player mats x5 180x110x18

// Faction mats x5 250x90x10 (kan stå på högkant)


// Money and Resources (same size as player box) + multiplier tokens. 
module resourceBox() {
    player_box_height = 40;
    player_box_width = 84.5;
    player_box_length = 130;
    tokenBox(size=[player_box_width, player_box_length, player_box_height], hexBottom=no_hex, corner=3,  containersX=2, containersY=2);
}

// Structure bonus tiles

// Map tiles x4

// Power dials x2

// Top layer 304mm

// Encounter tokens