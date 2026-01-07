// Carson City
include <../lib/BoardGameSystem.scad>;

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
layer1_low_height = 34.5 - 12;
layer1_high_height = 34.5 + 15;
layer2_height = 34.5;
layer3_height = 0;
hex_bottom = 6;
no_hex = 0;

// Player boxes
module playerBox() {
  tokenBox(size=[box_width / 3 - 0.5, 50, layer1_height], hexBottom=no_hex, corner=3);
}

// Money
module moneyBox() {
  tokenBox(size=[box_width, 56, layer1_height], hexBottom=no_hex, corner=3, containersX=4, containersY=1);
}

// Setup tiles river, mountains, character, start tile, Bandits
module setupTiles() {
  tokenBox(size=[box_width, 74, layer1_low_height], hexBottom=no_hex, corner=3, containersX=4, containersY=1);
}

// Guns, Guns, Horses, Rails
module gunsHorsesRails() {
  tokenBox(size=[box_width, 74, layer1_low_height], hexBottom=no_hex, corner=3, containersX=4, containersY=1);
}

// Horses & Houses
module housesHorses() {
  tokenBox(size=[box_width, 76, layer1_height], hexBottom=no_hex, corner=3, containersX=2, containersY=1);
}

// Characters
module characters() {
  tokenBox(size=[box_width, 76, layer1_height], hexBottom=hex_bottom, corner=3, containersX=2, containersY=1);
}

// Bag
module bag() {
  tokenBox(size=[box_width, 97, layer1_height], hexBottom=hex_bottom, corner=3, containersX=1, containersY=1);
}

// Tiles
module tiles() {
  tokenBox(size=[box_width, 57, layer1_high_height], hexBottom=hex_bottom, corner=3, containersX=4, containersY=1);
}
