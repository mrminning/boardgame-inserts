// Council of 4
include <../lib/BoardGameSystem.scad>;

main_box_length = 296;// X
main_box_width = 296; // Y
lane1_box_height = 61; // Z
lane2_box_height = 66; // Z
lane1_box_width = 148; // Y
lane2_box_width = 148; // Y
empty_box_height = 78;
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;

lane2_layer_height = lane2_box_height / 2; // Z

// Councilor miniatures: 6 colors 
module councilorBox() {
    tokenBox(size=[148, 49, lane2_layer_height], hexBottom=no_hex, corner=3);
}

// Big merchants: 4 colors
// Small merchants: 4 colors
// Marker tokens: 4 colors
module playerBox() {
    tokenBox(size=[148, 73.5, lane2_layer_height], hexBottom=no_hex, corner=3);
}

// Single servant tokens + Triple servant tokens
module servantTokens() {
    tokenBox(size=[83, 148, lane1_box_height], hexBottom=no_hex, containersY=2, corner=3);
}

// General reward tiles + Queens reward tiles + Queen
module rewardTilesQueen() {
    tokenBox(size=[71.5, 148, lane1_box_height], hexBottom=no_hex, containersY=3, corner=3);
}

// Business permit tiles (45x40)
module businessPermitTiles() {
    tokenBox(size=[60, 148, lane1_box_height], hexBottom=no_hex, corner=3);
    translate([60, 148/3, 0])
    rotate([0,0,90])
    dividerCutout(size=[60,60,1.2], corner=10, cutoutWidth=20, cutoutDepth=40);
    translate([60, 148/3*2, 0])
    rotate([0,0,90])
    dividerCutout(size=[60,60,1.2], corner=10, cutoutWidth=20, cutoutDepth=40);
}

// City tokens
module cityTokens() {
    tokenBox(size=[80, 97, lane1_box_height], hexBottom=no_hex, corner=3);
}

// Politics cards (64x42)
module politicsCards() {
 cardBox(size=[80,50,lane1_box_height], corner=3, containers=1, cutoutWidth=20);   
}

