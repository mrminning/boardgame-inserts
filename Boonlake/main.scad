// Boonlake
include <../lib/BoardGameSystem.scad>;

main_box_length = 307; // X
main_box_width = 218; // Y
main_box_height = 75; // Z
box_height = 46; // w rulebook
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
bottomCorner = 4;
corner = 3;
$fn = $preview ? 32 : 128;

// Player tokens
module playerbox() {
  tokenBox(size=[(main_box_length - action_board_length - 1) / 2, (main_box_width - 58) / 2, 29], hexBottom=no_hex, corner=3, containersX=1, containersY=1, wallThickness=1.2, bottomCorner=4);
}
// Action board 
action_board_length = 148;
action_board_width = 218;
action_board_height = 4;

// Building tiles
module buildingTiles() {
  tokenBox(size=[main_box_length - action_board_length, 57, box_height], hexBottom=no_hex, corner=3, containersX=1, containersY=1, wallThickness=1.2);
  translate([25 / 42 * (main_box_length - action_board_length), 0, 0]) {
    dividerCutout(size=[57, box_height, wallThickness], corner=3, cutoutWidth=25, cutoutDepth=20);
  }
  translate([32 / 42 * (main_box_length - action_board_length), 0, 0]) {
    dividerCutout(size=[57, box_height, wallThickness], corner=3, cutoutWidth=25, cutoutDepth=20);
  }
}

// Coins
module coins() {
  tokenBox(size=[main_box_length - action_board_length, 90, 17], hexBottom=no_hex, corner=3, containersX=[45, 90], containersY=1, wallThickness=1.2, bottomCorner=4);
}

// Levers & Vases
module leversAndVases() {
  tokenBox(size=[main_box_length - action_board_length, 35, 17], hexBottom=no_hex, corner=3, containersX=[45], containersY=1, wallThickness=1.2, bottomCorner=4);
}

// Project cards
module projectCardsBox() {
  cardBox(size=[95, (action_board_length - 1) / 2, box_height - action_board_height], corner=3, containers=1, cutoutWidth=30);
}

// Region markers
// Solo tiles
// Starting player token 
// Scoring tiles
module miscTilesAndTokens() {
  tokenBox(size=[action_board_length, main_box_width - 96, box_height - action_board_height], hexBottom=no_hex, corner=3, containersX=1, containersY=1, wallThickness=1.2);
  translate([action_board_length - 35, 0, 0]) {
    cube(size=[wallThickness, main_box_width - 96, box_height - action_board_height]);
  }
  translate([70, 0, 0]) {
    cube(size=[wallThickness, 72, box_height - action_board_height]);
  }
  translate([0, 72, 0]) {
    cube(size=[action_board_length - 35, wallThickness, box_height - action_board_height]);
  }
}
