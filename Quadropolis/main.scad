// Quadropolis
include <../lib/BoardGameSystem.scad>;

main_box_length = 131; // X
main_box_width = 87; // Y
main_box_height = 27; // Z
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;

// Energy + Inhabitants
module energyInhabitants() {
  tokenBox(size=[main_box_length, main_box_width, main_box_height], containersX=2, hexBottom=no_hex, corner=3, bottomCorner=3);
}
