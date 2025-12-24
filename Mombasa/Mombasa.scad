include <main.scad>;

tracks();

translate([45, 0, 0])
  color(c="yellow")
    playerTokens();

translate([45, 72, 0])
  color(c="purple")
    playerTokens();

translate([45, 144, 0])
  color(c="green")
    playerTokens();

translate([45, 216, 0])
  color(c="blue")
    playerTokens();

translate([146, 0, 0])
  coins();

translate([146, 101, 0])
  bookTiles();

translate([45, 300, 0])
  scoringPad();

translate([170, 300, 0])
  startingTiles();

translate([230, 442, 0])
  rotate([0, 0, 90])
    cards();

translate([292, 442, 0])
  rotate([0, 0, 90])
    cards();

translate([45, 422, 0])
  tradingPosts();
