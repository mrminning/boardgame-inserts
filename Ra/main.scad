// Ra
include <../lib/BoardGameSystem.scad>;

main_box_width = 209; // X
main_box_height = 65; // Y
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;
lid_tolerance = 0.3;

// Scoring tokens. 6 lanes 
module ScoringTokenBox() {
    length = main_box_width - (wallThickness * 2) - lid_tolerance;
    tokenBox(size=[length, 60, 22], hexBottom=no_hex, corner=1, containersX=6);
}

module ScoringTokenLid() {
    width = 60 + (wallThickness * 2) + lid_tolerance;
    height = 22 + wallThickness;
    radius = 18;
    difference() {
    tokenBox(size=[209, width, height], hexBottom=no_hex, corner=0, wallThickness=wallThickness);
        translate([(209)/2,width/2,height])
        rotate([90, 90, 0])
        cylinder(width, radius, radius, center = true);
    }
}
