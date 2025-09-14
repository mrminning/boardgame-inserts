include <BOSL2/std.scad>

$fn=128;

// Scythe Advanced Modules
// https://boardgamegeek.com/filepage/262182/scythe-advanced-modules

module overlay() {
    cuboid([23, 56, 2], rounding=2, edges=[FWD+RIGHT,FWD+LEFT,BACK+RIGHT, BACK+LEFT]);
}


module structures() {
    linear_extrude(height=2) {
        octagon(od=19);
    }
}


module upgrades() {
    cuboid([48,36,2], rounding=5, edges=[FWD+RIGHT,FWD+LEFT,BACK+RIGHT, BACK+LEFT]);
}
