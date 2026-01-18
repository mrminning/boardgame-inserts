// Calico
include <../lib/BoardGameSystem.scad>;

main_box_length = 232; // X
main_box_width = 232; // Y
main_box_height = 73; // Z
box_height = 67; // w rulebook
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
bottomCorner = 4;
corner = 3;
$fn = $preview ? 32 : 128;

// PlayerBoards
player_boards_height = 20;
player_boards_width = 184;

// Draw bag + Score pad + Patch tiles
module drawBagScorePadPatchTiles() {
  tokenBox(size=[171, 154, box_height - player_boards_height], hexBottom=0, corner=3, containersX=1, containersY=1, wallThickness=1.2, bottomCorner=4);
}

// Cat scoring tiles 57 x 90 x 13
module catScoringTiles() {
  tokenBox(size=[60, 154, 20], hexBottom=0, corner=3, containersX=1, containersY=1, wallThickness=1.2);
}

// Cat tokens (10) 47 x 78 x 23.5
module catTokens() {
  tokenBox(size=[46.2, 78, 23.5], hexBottom=0, corner=3, containersX=1, containersY=1, wallThickness=1.2, bottomCorner=4);
}

// Button tokens (6 + rainbow)
module buttonTokens() {
  tokenBox(size=[60, 154, 27], hexBottom=0, corner=3, containersX=1, containersY=1, wallThickness=1.2, bottomCorner=4);
}

// Button scoring tile + Design goals
module buttonScoringDesignGoalsTiles() {
  tokenBox(size=[46, 231, 20], hexBottom=0, corner=3, containersX=1, containersY=5, wallThickness=1.2, bottomCorner=4);
}
