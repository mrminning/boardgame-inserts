include <main.scad>;

//spacers();

playerbox();

translate([95, 0, 0])
  playerbox();

translate([0, 95, 0])
  playerbox();

translate([95, 95, 0])
  playerbox();

translate([190, 0, 0])
  scoutTiles();

translate([0, 190, 0])
  gpsAndTransport();

translate([90, 190, 0])
  coins();

translate([180, 190, 0])
  cards();

translate([0, 390, 0])
  spacers();

translate([160, 390, 0])
  spacers();

translate([0, 540, 0])
  spacers();

translate([160, 540, 0])
  spacers();
