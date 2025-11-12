// Red Cathedral
include <../lib/BoardGameSystem.scad>;

main_box_length = 220; // X
main_box_width = 171; // Y
main_box_height = 26; // Z
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;


module cardBox() {
    width = 12;
    height = 35;
    radius = 18;
    slots = 3;
    offset = main_box_length/6;
    difference() {
        tokenBox(size=[main_box_length, width, height], hexBottom=no_hex, corner=3, wallThickness=wallThickness, containersX=3);
        for(i=[0:slots-1]) {
            translate([(offset*i*2)+offset ,width/2,height])
            rotate([90, 90, 0])
            cylinder(width, radius, radius, center = true); 
        }
    }
}

module workshopTiles() {
    tokenBox(size=[28, 158.5, main_box_height], hexBottom=no_hex, corner=3, wallThickness=wallThickness, containersY=3);
}

module dice() {
    tokenBox(size=[22, 90, main_box_height], hexBottom=no_hex, corner=3, wallThickness=wallThickness);
}

module coinsGemsBox() {
    tokenBox(size=[50, 90, main_box_height/2], hexBottom=no_hex, corner=3, wallThickness=wallThickness, containersY=2);
}

module playerBox() {
    tokenBox(size=[59, 44.5, main_box_height], hexBottom=no_hex, corner=3, wallThickness=wallThickness);
}

module resourcesBox() {
    tokenBox(size=[191, 68, main_box_height], hexBottom=no_hex, corner=3, wallThickness=wallThickness, containersX=4);
}
