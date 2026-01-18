// Calico
include <main.scad>;

catTokens();

translate([48, 0, 0])
  catTokens();

translate([96, 0, 0])
  catTokens();

translate([144, 0, 0])
  catTokens();

translate([192, 0, 0])
  catTokens();

translate([0, 81, 0])
  drawBagScorePadPatchTiles();

translate([176, 81, 0])
  catScoringTiles();

translate([247, 0, 0])
  buttonScoringDesignGoalsTiles();

// Layer 2
translate([300, 0, 0])
  catTokens();

translate([348, 0, 0])
  catTokens();

translate([396, 0, 0])
  catTokens();

translate([444, 0, 0])
  catTokens();

translate([492, 0, 0])
  catTokens();

translate([476, 81, 0])
  buttonTokens();
