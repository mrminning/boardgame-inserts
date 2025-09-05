// Teotihuacan
include <../lib/BoardGameSystem.scad>;

box_length = 286; // 4 lanes and 2 mm gutter
lane_width = (box_length - 2) / 4;
box_width = 285;
box_height = 70;
board_and_rules_height = 20;
layer1_height = 25;
layer2_height = 25;
hex_bottom = 6;
no_hex = 0;


// Layout rows from top left to bottom right
// Top layer

// Priest + priestess + Teotibot tiles x2 21 x 80 x 120
priest_width = 85;
//tokenBox(size=[284/2, priest_width, layer2_height], hexBottom=hex_bottom, corner=3);

// Action boards 21 x 110 x 220
action_board_length = 225;
action_board_width = 115;
//tokenBox(size=[action_board_length, action_board_width, layer2_height], hexBottom=hex_bottom, corner=3);

// Pyramid tiles
//tokenBox(size=[box_width-action_board_length-0.5, box_width-priest_width, layer1_height + layer2_height], hexBottom=hex_bottom, corner=3);

// Setup_tiles: Technology + royal + season  + Temple bonus + Decoration tiles
// tokenBox(size=[action_board_length, box_width-priest_width-action_board_width-1, layer2_height], hexBottom=hex_bottom, corner=3, containersX=5, containersY=1);


// Bottom layer

// Player box x4
//tokenBox(size=[284/4,lane_width,layer1_height], hexBottom=no_hex, corner=3);

// Starting tiles
//tokenBox(size=[284/4,lane_width,layer1_height], hexBottom=hex_bottom, corner=3);

// Discovery tiles
// tokenBox(size=[284/2,lane_width,layer1_height], hexBottom=hex_bottom, corner=3);

// Buildings (white houses) + Calendar disks + player order tokens
buildings_width = 40;
//tokenBox(size=[action_board_length-lane_width, buildings_width, layer1_height], hexBottom=no_hex, corner=3, containersX=2, containersY=1);

// Resources: wood, gold, stone
xsize = box_width-lane_width-buildings_width-1;
tokenBoxDividers(size=[xsize,(action_board_length-lane_width-1)/2,layer1_height], hexBottom=no_hex, corner=3, containersX=[57,114], containersY=1);

// Resources: Cacao
//tokenBox(size=[box_width-lane_width-buildings_width-1,(action_board_length-lane_width-1)/2,layer1_height], hexBottom=no_hex, corner=3, containersX=2, containersY=1);



