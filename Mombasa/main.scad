// Mombasa
include <../lib/BoardGameSystem.scad>;

main_box_length = 288; // X
main_box_width = 288; // Y
main_box_height = 68; // Z

hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;

// Game board: Total size
main_board_height = 9;
main_board_width = 246;
main_board_length = 246;

layer_height = (main_box_height - main_board_height) / 2;

// Tracks 43 x 288
module tracks() {
  tokenBox(size=[(288 - 245), 288, main_box_height], hexBottom=no_hex, corner=3, containersY=1, roundedBottom=true);
}

// Coins
module coins() {
  tokenBox(size=[(288 - 44 - 100), 100, layer_height], hexBottom=no_hex, corner=3, containersX=2, roundedBottom=true);
}

// Book tiles   
module bookTiles() {
  tokenBox(size=[(288 - 44 - 100), 288 - 100.5, layer_height], hexBottom=no_hex, corner=3, containersY=3, roundedBottom=true);
}

// Starting tiles
module startingTiles() {
  tokenBox(size=[(124), 288 - 152, layer_height], hexBottom=no_hex, corner=3, containersY=1, roundedBottom=true);
}

// Bonus tiles
module bonusTiles() {
  tokenBox(size=[(288 - 245), 288, layer_height], hexBottom=no_hex, corner=3, containersY=1, roundedBottom=true);
}

// Trading posts
module tradingPosts() {
  tokenBox(size=[120, 288 - 120.5, layer_height], hexBottom=no_hex, corner=3, containersY=4, roundedBottom=true);
}

// Player tokens * 4 (Yellow, Green, Blue, Purple)
module playerTokens() {
  tokenBox(size=[100, (287 / 4), layer_height - 10], hexBottom=no_hex, corner=3, containersY=1, roundedBottom=true);
}

// Cards: Actions, expansion, track (68 * 43)
module cards() {
  cardBox(size=[152, 62, layer_height], corner=3, containers=2);
}

// Scoring pad + player aids
module scoringPad() {
  tokenBox(size=[120, 120, layer_height], hexBottom=no_hex, corner=3, containersY=1, roundedBottom=true);
}

// Player boards
module playerBoards() {
  cube([279, 100, 9]);
}

// Main board
module mainBoard() {
  cube([246, 246, 10]);
}
