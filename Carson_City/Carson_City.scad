// Carson City
include <main.scad>;

box_length = 307; // 4 lanes and 2 mm gutter
lane_width = (box_length - 2) / 4;
box_width = 218;
box_height = 69; // After game boards and rules
empty_box_height = 100;

main_board_height = 15;
main_board_width = 218;
main_board_length = 250; 
// Gap box_length - main_board_length
// 57 x 218 x 15

// Pad
// 210 x 148 x 12

layer1_height = 34.5;
layer1_low_height = 34.5-12;
layer1_high_height = 34.5+15;
layer2_height = 34.5;
layer3_height = 0;
hex_bottom = 6;
no_hex = 0;

// Bottom layer 304mm
// Player boxes
playerBox();

translate([73, 0 ,0])
playerBox();

translate([146, 0 ,0])
playerBox();

translate([0, 52 ,0])
playerBox();

translate([73, 52 ,0])
playerBox();

translate([146, 52 ,0])
playerBox();

// Money
translate([0, 104 ,0])
moneyBox();

// Setup tiles river, mountains, character, start tile, Bandits
translate([0, 161 ,0])
setupTiles();

// Guns, Guns, Horses, Rails
translate([0, 237 ,0])
gunsHorsesRails();


// Top layer 304mm
// Horses & Houses
translate([300, 0,0])
housesHorses();

// Characters
translate([300, 78 ,0])
characters();

// Bag
translate([300, 155 ,0])
bag();

// Tiles
translate([300, 255 ,0])
tiles();
