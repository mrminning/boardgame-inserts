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

// Cards: Objectives, Solo 57x87
module midsizecardsBox() {
    color("pink")
    cardBox(size=[87*2+6, 25, 57+4], containers=2, cutoutWidth=30, corner=3);
}

// Power dials & Cards: Factory, Quickstart, River walk cards
module dialsCardsBox() {
    tokenBoxDividers(size=[228, 181, 18], hexBottom=no_hex, corner=3,  containersX=[75]);
    translate([0,120,0]) cube([75, wallThickness, 18]);
}

// Encounter tokens
module encountertokensBox() {
    player_box_height = 40;
    player_box_width = 84.5;
    depth = 25;
    tokenBox(size=[player_box_width, depth, player_box_height], hexBottom=no_hex, corner=3);
}

// Money and Resources (same size as player box) + multiplier tokens. 
module resourceBox() {
    player_box_height = 40;
    player_box_width = 84.5;
    player_box_length = 130;
    tokenBox(size=[player_box_width, player_box_length, player_box_height], hexBottom=no_hex, corner=3,  containersX=2, containersY=2);
}

// Structure bonus tiles, Faction tile, Combat Cards     228 x 81 x 18
module structureBox() {
    tokenBoxDividers(size=[228, 81, 18], hexBottom=no_hex, corner=3,  containersX=[52,104,156]);
}
