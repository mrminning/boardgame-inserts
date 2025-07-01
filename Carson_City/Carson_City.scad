// Carson City
include <BoardGameSystem.scad>;

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

// Bottom layer
// 38 mm kvar
// 4 Player boxes 60 x 60 x 34 3x2
color("blue")
tokenBox(size=[box_width/4, 60, layer1_height], hexBottom=no_hex, corner=3);
color("red")
translate([57, 0 ,0])
tokenBox(size=[box_width/4, 60, layer1_height], hexBottom=no_hex, corner=3);
color("blue")
translate([114, 0 ,0])
tokenBox(size=[box_width/4, 60, layer1_height], hexBottom=no_hex, corner=3);
color("red")
translate([171, 0 ,0])
tokenBox(size=[box_width/4, 60, layer1_height], hexBottom=no_hex, corner=3);
// 2 Player boxes 60 x 60 x 34 3x2
translate([0, 62 ,0])
color("blue")
tokenBox(size=[box_width/4, 60, layer1_height], hexBottom=no_hex, corner=3);
color("red")
translate([57, 62 ,0])
tokenBox(size=[box_width/4, 60, layer1_height], hexBottom=no_hex, corner=3);

// Setup tiles river, mountains, character, start tile, Bandits
translate([0, 122 ,0])
tokenBox(size=[box_width, 74, layer1_low_height], hexBottom=no_hex, corner=3, containersX=4, containersY=1);

// Guns, Guns, Horses, Rails
translate([0, 198 ,0])
tokenBox(size=[box_width, 74, layer1_low_height], hexBottom=no_hex, corner=3, containersX=4, containersY=1);

// Money


// Top layer
// Horses & Houses
translate([300, 0,0])
tokenBox(size=[box_width, 74, layer1_height], hexBottom=no_hex, corner=3, containersX=2, containersY=1);


// Characters
translate([300, 138 ,0])
tokenBox(size=[box_width, 74, layer1_height], hexBottom=no_hex, corner=3, containersX=3, containersY=1);

// Bag
translate([300, 214 ,0])
tokenBox(size=[box_width, 53, layer1_height], hexBottom=no_hex, corner=3, containersX=1, containersY=1);

// Tiles
translate([300, 268 ,0])
tokenBox(size=[box_width, 54, layer1_high_height], hexBottom=no_hex, corner=3, containersX=1, containersY=1);
