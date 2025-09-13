# boardgame-inserts

Using as slightly modified https://github.com/beavisCZ/BoardGameSystem as lib to generate component boxes.

## Carson City

## Scythe
Build STLs with script
```
cd Scythe
./buildAll.sh
```

## Teotihucan

## lib
- https://github.com/beavisCZ/BoardGameSystem
- Added tokenBoxDividers with variable wall positioning.
- Added straightDivider for cardbox.
- Added cardBox as tokenBox with cutouts.

### cardBox
```
cardBox(size=[90,50,25], corner=3, containers=3, cutoutWidth=12);
```

### straightDivider
```
straightDivider(size=[92,68,1.4], corner=3, txtLabel="Divider", txtSize=8, txtFont="Arial")
```

### tokenBoxDividers
```
tokenBoxDividers(size=[xsize,(action_board_length-lane_width-1)/2,layer1_height], hexBottom=no_hex, corner=3, containersX=[57,114], containersY=[50]);
```
