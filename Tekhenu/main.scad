// Tekhenu
include <../lib/BoardGameSystem.scad>;

main_box_length = 286; // X
main_box_width = 286; // Y
main_box_height = 73; // Z
empty_box_height = 78;
lane1_height = 43; // 41-45
layer1_height = 20.5;
layer2_height = lane1_height - layer1_height;
lane1_width = 180;
lane2_height = 53; // 57-51
high_lane_height = lane1_height / 2 + lane2_height - lane1_height;
lane2_width = 104;
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
bottomCorner = 4;
corner = 3;
$fn = $preview ? 32 : 128;

// Game boards: Total size
main_board_height = 14;
main_board_width = 285;
main_board_length = 285;
player_boards_height = 10;

// Obelisk wheel 115
// Resources (Papyrus, Limestone, Bread, Granite) 1 + 5
module resourcesBox() {
  obeliskWheelHeight = 2.5;
  difference() {
    tokenBox(size=[180, 162, layer1_height], hexBottom=no_hex, containersX=2, containersY=2, corner=corner, bottomCorner=bottomCorner);
    translate([60 / 2, 42 / 2, layer1_height - obeliskWheelHeight])
      cube([120, 120, obeliskWheelHeight]);
  }
}

// Gold, Scribe, Faith
module goldScribeFaithBox() {
  difference() {
    tokenBox(size=[105, 162, layer1_height], hexBottom=no_hex, containersX=2, containersY=2, corner=corner, bottomCorner=bottomCorner);
    translate([75 / 2, 81 + wallThickness, wallThickness])
      roundedBox([30, 81 - (wallThickness * 2), layer1_height], corner - 1, bottomCorner=bottomCorner);
  }
}

// Obelisk 118 x 40 x 40
module obeliskBox() {
  tokenBox(size=[185, 42, lane1_height], hexBottom=no_hex, corner=corner, bottomCorner=bottomCorner);
}

// Pillar tiles
module pillarTilesBox() {
  tokenBox(size=[100, 42, lane1_height], hexBottom=no_hex, corner=corner, bottomCorner=0);
}

// Horus bonus tiles
module horusBonusTilesBox() {
  tokenBox(size=[100, 80, layer1_height], hexBottom=no_hex, corner=corner, bottomCorner=bottomCorner);
}

// Cards Starting, Destiny (64 x 41) + Scoring markers
module cardsStartingDestinyScoringMarkersBox() {
  cardBox(size=[105, 68, player_boards_height], containers=2, cutoutWidth=20, corner=2.5);
  translate([0, 68 - wallThickness, 0])
    tokenBox(size=[105, 80 + 42 + wallThickness - 68, player_boards_height], corner=2.5, bottomCorner=bottomCorner);
  translate([0, 65, 0])
    cube([wallThickness, 6, player_boards_height]);
  translate([105 - wallThickness, 65, 0])
    cube([wallThickness, 6, player_boards_height]);
}

// Dice + draw bag
module diceDrawBagBox() {
  tokenBox(size=[105, 162, layer2_height + player_boards_height], hexBottom=no_hex, corner=corner, bottomCorner=bottomCorner);
}

// Player boards
// Player buildings, pillars 120x35, production markers, statues, discs, meeples, Noble building

// Player box 179.5 / 2 x   241.5 / 2 x layer2_height
module playerBox() {
  tokenBox(size=[90, 121, layer2_height], containersX=[38], hexBottom=no_hex, corner=corner, bottomCorner=bottomCorner);
}

// Cards Blessing, Technology, Decree, Starting, Destiny (64 x 41)
module cardsBox() {
  cardBox(size=[180, 80, layer1_height], containers=3, cutoutWidth=20, corner=corner);
}

// Solo: Botankhamun action tiles + Deben + progressmarker
module soloComponentsBox() {
  tokenBox(size=[100, 80, layer2_height], hexBottom=no_hex, corner=corner, bottomCorner=0);
}
