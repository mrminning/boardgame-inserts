// Ethnos 2nd ed
include <../lib/BoardGameSystem.scad>;

// 65 x 249 x 152
main_box_length = 249;
main_box_width = 152;
main_box_height = 43;

no_hex = 0;
wallThickness = 1.2;
bottomCorner = 4;
corner = 3;
$fn = $preview ? 32 : 128;

// Draw bag + Score pad + Patch tiles
module tokens() {
  tokenBox(size=[main_box_length, main_box_width, main_box_height], hexBottom=0, corner=3, containersX=[92, 180], containersY=1, wallThickness=1.2, bottomCorner=4);
  translate([180, main_box_width / 2, 0])
    cube([249 - 180, wallThickness, main_box_height]);
  translate([92, 92, 0])
    cube([88, wallThickness, main_box_height]);
}
