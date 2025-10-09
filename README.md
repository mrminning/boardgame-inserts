# boardgame-inserts

Using a modified https://github.com/beavisCZ/BoardGameSystem as lib to generate component boxes for inserts.

## Carson City
Insert for Carson City Big Box

## Scythe
Insert for Carson City Scythe.

Build STLs with script
```
cd Scythe
./buildAll.sh
```

## Teotihucan
Insert for Teotihucan.

## lib
Modules for designing board game inserts. Based on https://github.com/beavisCZ/BoardGameSystem.

### cardBox
A box for cards with a cutout at the end.
```
cardBox(size=[90,50,25], corner=3, containers=3, cutoutWidth=12);
```

### dividerCutout
A diver with cutout for cardboxes.
```
dividerCutout(size=[80,60,1.2], corner=3, cutoutWidth=30, cutoutDepth=40)
```

### straightDivider
```
straightDivider(size=[92,68,1.4], corner=3, txtLabel="Divider", txtSize=8, txtFont="Arial")
```

### tokenBoxDividers
```
tokenBoxDividers(size=[xsize,(action_board_length-lane_width-1)/2,layer1_height], hexBottom=no_hex, corner=3, containersX=[57,114], containersY=[50]);
```
