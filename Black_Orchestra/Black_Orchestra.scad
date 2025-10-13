include<main.scad>;

enemyMarkersBox();

translate([56,0,0])
eventCardsBox();

translate([0,285,0])
interrogationConspiratorCardBox();

translate([0,285,0])
conspiritorSheetBox();

translate([68,95,0])
pawnsAndTiles();

translate([56+67.5+95.5,95.5,0])
diceBox();

translate([56+67.5,95+95.5,0])
horstKopkowBox();

translate([56+67.5,95+95.5,0])
rotate([0,0,0])
redOrchestraBox();

translate([135.5,95*3,0])
kreisauCircleBox();
