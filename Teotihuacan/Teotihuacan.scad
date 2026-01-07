// Teotihuacan
include <main.scad>;

pyramidTiles();

translate([60, 0, 0])
  setupTiles();

translate([60, 86, 0])
  actionBoards();

translate([0, 202, 0])
  priestsPriestessesTeotibots();

translate([145, 202, 0])
  priestsPriestessesTeotibots();

translate([300, 0, 0])
  playerBox();

translate([372, 0, 0])
  playerBox();

translate([444, 0, 0])
  playerBox();

translate([516, 0, 0])
  playerBox();

translate([300, 72, 0])
  startingTiles();

translate([300, 144, 0])
  discoveryTiles();

translate([372, 250, 0])
  rotate([0, 0, 270])
    resources();

translate([444, 250, 0])
  rotate([0, 0, 270])
    cacao();

translate([372, 252, 0])
  buildingsCalendarDisksPlayerOrderTokens();
