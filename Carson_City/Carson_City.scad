include <main.scad>;

playerBox();

translate([75, 0, 0])
  playerBox();

translate([0, 51, 0])
  playerBox();

translate([75, 51, 0])
  playerBox();

translate([150, 0, 0])
  playerBox();

translate([150, 51, 0])
  playerBox();

translate([0, 102, 0])
  setupTiles();

translate([0, 178, 0])
  gunsHorsesRails();

translate([0, 252, 0])
  moneyBox();

translate([240, 0, 0])
  tiles();

translate([240, 60, 0])
  housesHorses();

translate([240, 140, 0])
  characters();

translate([240, 220, 0])
  bag();
