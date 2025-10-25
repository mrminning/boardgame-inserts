// Keyflower
include <../lib/BoardGameSystem.scad>;

main_box_length = 308;// X
main_box_width = 218; // Y
main_box_height = 69; // Z
layer_height = main_box_height/2;
last_lane_width = 308-241;
empty_box_height = 70;
hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;

// Tiles: 69 * 80
module tilesBox() {
    tokenBox(size=[85, 218, main_box_height], hexBottom=no_hex, corner=3);
}

// 6 dividers (spring, summer, autumn, winter, home, boat, turn order)
module moduleTileDivider(label="Divider") {
    straightDivider(size=[82,64,1.4], corner=3, txtLabel=label, txtSize=8, txtFont="Nimbus Roman No9 L");
}

module tileDividerSpring() {
    moduleTileDivider("Spring");
    }
module tileDividerSummer() {
    moduleTileDivider("Summer");
    }
module tileDividerAutumn() {
    moduleTileDivider("Autumn");
    }
module tileDividerWinter() {
    moduleTileDivider("Winter");
    }
module tileDividerBoats() {
    moduleTileDivider("Boats");
    }
module tileDividerHome() {
    moduleTileDivider("Home");
    }
module tileDividerTurn() {
    moduleTileDivider("Turn order");
    }

// Home screens
module homeScreensBox() {
    tokenBox(size=[155, 130, main_box_height], corner=3);
}

// Meeple bag
module meepleBagBox() {
    tokenBox(size=[155, 217-130, main_box_height], hexBottom=no_hex, corner=3);
}

// Skill tiles
module skillTilesBox() {
    tokenBox(size=[last_lane_width, 88,  layer_height], hexBottom=no_hex, corner=3);
}

// Green meeples
module greenMeeplesBox() {
    tokenBox(size=[last_lane_width, 88,  layer_height], hexBottom=no_hex, corner=3);
}

// Waving meeple + Keymelequin
module otherMeeplesBox() {
    tokenBox(size=[last_lane_width, 40, layer_height], corner=3);
}

// 4 Resources
module resourcesBox() {
    tokenBox(size=[last_lane_width, main_box_width, layer_height], hexBottom=0, corner=3, containersX=1, containersY=4);
}
