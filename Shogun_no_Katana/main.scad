include <../lib/BoardGameSystem.scad>;

box_length = 288;
box_width = 288;
box_height = 69;

inner_well_width = 180;
inner_well_height = 45;
inner_well_length_top = 280;
inner_well_length_bottom = 268;

bottom_layer_height = inner_well_height / 2;
top_layer_height = inner_well_height / 2;

hex_bottom = 6;
no_hex = 0;
wallThickness = 1.5;
$fn = $preview ? 32 : 128;

// Coins
module sashimonoTiles() {
  tokenBox(size=[102, 42, 31], hexBottom=no_hex, corner=4, containersX=2, bottomCorner=4, wallThickness=wallThickness);
}
