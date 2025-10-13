// Black Orchestra
include <../lib/BoardGameSystem.scad>;

main_box_length = 286;// X
main_box_width = 286; // Y
main_box_height = 54; // Z
layer_height = 27;
empty_box_height = 68;
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;


// Game boards: Total size
main_board_height = 14;
main_board_width = 285;
main_board_length = 285;

// Event cards: 64 * 89,  7 stacks
module eventCardsBox() {
    box_height = main_box_height;
    event_box_width = 95;
    box_length = 286-56; // 230
    spacing = (box_length - 40.5) / 7;
    tokenBox(size=[box_length, event_box_width, main_box_height], hexBottom=no_hex, corner=1);
    slots = 7;
    for(i=[0:slots-1]) {
        translate([40.5+(spacing*i),0,0]) {
          rotate([0, 0-38,0]) {
            dividerCutout(size=[event_box_width, 65, wallThickness], corner=3, cutoutWidth=30, cutoutDepth=40);
          }
        }
    }
}

// Enemy markers + nazi leader tiles
module enemyMarkersBox() {
    enemy_box_height = main_box_height;
    enemy_box_width = 95;
    enemy_box_length = 55.5;
    tokenBox(size=[enemy_box_length, enemy_box_width, enemy_box_height], hexBottom=no_hex, corner=3);
}

// Conspirator cards:
// Victory card
// Interrogation cards
module interrogationConspiratorCardBox() {
    rotate([0,0,270]) {
        cardBox(size=[main_box_width-96,67, layer_height], corner=3, containers=2, cutoutWidth=20);
    }
}

// Conspirator sheets
module conspiritorSheetBox() {
    tokenBox(size=[135, main_box_width-96,  layer_height], hexBottom=hex_bottom, corner=3);
}

// Item tiles
// Difficulty tiles
// Dice
// Pawns + tracking cubes
module pawnsAndTiles() {
    tokenBox(size=[55.5,main_box_width-96,layer_height], hexBottom=0, corner=0,
    containersX=1, containersY=3,
    wallThickness=1.2);
}

// Dice
module diceBox() {
    tokenBox(size=[67, 95, layer_height], corner=3);
}


// Red Orchestra
    // Event cards
    // Conspirator cards
    // Mission cards
    // Teleprinter tokens
    // Pamphlet + hideout token
    // Special item tiles
module redOrchestraBox() {
    length = 67+95;
    width = 95;
    cutoutWidth = 20;
    corner = 3;
    offset = width/2 - cutoutWidth/2 - corner;

    difference() {
        tokenBox(size=[length, width, layer_height], corner=corner);
        translate([0,offset,0])
            cube([1.2, cutoutWidth+(corner*2), layer_height]);
    }
    translate([0,offset+cutoutWidth/2+corner,0])
        cutoutFiller(cutoutWidth=cutoutWidth, corner=corner, cutoutHeight=layer_height, wallThickness=1.2);
    translate([67,0,0])
    cube([1.2, 95, layer_height]);
}

// Horst Kopkow
    // Event cards
    // Conspirator cards
    // Encounter cards
module horstKopkowBox() {
    rotate([0,0,270]) {
        cardBox(size=[95, 95, layer_height], corner=3, containers=1, cutoutWidth=20);
        translate([0,67,0])
        cube([95, 1.2, layer_height]);
    }
}

// Kreisau Circle
    // Event cards
    // Ally tiles
    // New item tiles
module kreisauCircleBox() {
    length = 285 - 135;
    width = 285 - 95;
    cutoutWidth = 20;
    corner = 3;
    offset = 95/2 - cutoutWidth/2 - corner;

    difference() {
        tokenBox(size=[length, width, layer_height], corner=corner);
        translate([0,offset,0])
            cube([1.2, cutoutWidth+(corner*2), layer_height]);
    }
    translate([0,offset+cutoutWidth/2+corner,0])
        cutoutFiller(cutoutWidth=cutoutWidth, corner=corner, cutoutHeight=layer_height, wallThickness=1.2);
    translate([67,0,0])
    cube([1.2, 95, layer_height]);
    translate([0,95,0])
    cube([150, 1.2, layer_height]);

}
