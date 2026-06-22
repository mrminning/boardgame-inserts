// Boonlake
include <main.scad>;
rotate([0, 0, 270]) {
  translate([-95, 0, 0]) {
    projectCardsBox();
  }
  translate([-95, 75, 0]) {
    projectCardsBox();
  }
}
translate([150, 0, 0]) {
  buildingTiles();
}

translate([0, 100, 0]) {
  miscTilesAndTokens();
}

translate([150, 58, 0]) {
  leversAndVases();
}

translate([150, 58 + 36, 0]) {
  leversAndVases();
}

translate([150, 58 + 72, 0]) {
  coins();
}

translate([320, 58, 0]) {
  playerbox();
}
translate([320, 58 + 81, 0]) {
  playerbox();
}

translate([400, 58, 0]) {
  playerbox();
}
translate([400, 58 + 81, 0]) {
  playerbox();
}
