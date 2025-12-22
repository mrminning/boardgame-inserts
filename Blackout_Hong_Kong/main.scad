include <../lib/BoardGameSystem.scad>;

box_length = 288;
box_width = 288;
box_height = 69;

inner_well_width = 180;
inner_well_height = 45;
inner_well_length_top = 280;
inner_well_length_bottom = 268;

bottom_layer_height = inner_well_height / 2;
top_layer_height = inner_well_height / 2;

hex_bottom = 6;
no_hex = 0;
wallThickness = 1.2;
$fn = $preview ? 32 : 128;

// Spacers to place under the cardboard insert. Print 4
module spacers() {
  spacer(size=[box_length / 2, box_width / 2, 3]);
}

// Coins
module coins() {
  tokenBox(size=[(inner_well_length_bottom - 101) / 2, inner_well_width, top_layer_height], hexBottom=no_hex, corner=3, containersY=2, roundedBottom=true);
}

// GPS and Transport
module gpsAndTransport() {
  tokenBox(size=[(inner_well_length_bottom - 101) / 2, inner_well_width, top_layer_height], hexBottom=no_hex, corner=3, containersY=2, roundedBottom=true);
}

// Playerbox (grey + green + orange + white)
module playerbox() {
  tokenBox(size=[inner_well_length_top / 3 - 0.3, inner_well_width / 2 - 0.5, top_layer_height], hexBottom=no_hex, corner=3, roundedBottom=true);
}

// Scout tiles, Dice + start player
module scoutTiles() {
  tokenBox(size=[inner_well_length_top / 3 - 0.3, inner_well_width, top_layer_height], hexBottom=no_hex, containersY=[120], corner=3, roundedBottom=true);
}

// Cards 72 objective cards, 48 player cards, 8 starting cards, 4 dice cards, 4 emergency plans
module cards() {
  cardBox(size=[inner_well_width, 100, top_layer_height], hexBottom=no_hex, corner=3, containers=3);
}
