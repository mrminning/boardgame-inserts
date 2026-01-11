// Tekhenu
include <main.scad>;

// Layer 1
pillarTilesBox();

translate([0, 43, 0])
  horusBonusTilesBox();

translate([0, 124, 0])
  goldScribeFaithBox();

translate([102, 0, 0])
  obeliskBox();

translate([110, 124, 0])
  resourcesBox();

translate([110, 43, 0])
  cardsBox();

// Layer 2
translate([300, 124, 0])
  diceDrawBagBox();

translate([300, 43, 0])
  soloComponentsBox();

translate([405, 43, 0])
  playerBox();

translate([496, 43, 0])
  playerBox();

translate([405, 165, 0])
  playerBox();

translate([496, 165, 0])
  playerBox();

// Layer 0
translate([600, 0, 0])
  cardsStartingDestinyScoringMarkersBox();
