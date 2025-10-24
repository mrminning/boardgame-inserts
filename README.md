# boardgame-inserts

Using a modified https://github.com/beavisCZ/BoardGameSystem as lib to generate component boxes for inserts.

## Black Orchestra
Insert for Black Orchestra.

Build STLs with script
```
cd Black_Orchestra
./buildAll.sh
```

## Carson City
Insert for Carson City Big Box
Build STLs with script
```
cd Carson_City
./buildAll.sh
```

## Keyflower
Insert for Keyflower
Build STLs with script
```
cd Keyflower
./buildAll.sh
```

## Scythe
Insert for Scythe.

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
![sample](/lib/images/cardBox.png)

### cutoutFiller
Smoother edges for cutouts.
```
cutoutFiller(cutoutWidth=20, corner=3, cutoutHeight=20, wallThickness=1.2);
```
![sample](/lib/images/cutoutFiller.png)

### dividerCutout
A diver with cutout for cardboxes.
```
dividerCutout(size=[80,60,1.2], corner=10, cutoutWidth=25, cutoutDepth=40);
```
![sample](/lib/images/dividerCutout.png)

### straightDivider
```
straightDivider(size=[92,68,1.4], corner=3, txtLabel="Divider", txtSize=8, txtFont="Arial")
```
![sample](/lib/images/straightDivider.png)

### tokenBoxDividers
```
tokenBoxDividers(size=[100,100,10], hexBottom=0, corner=3, containersX=[60], containersY=[40], wallThickness=1.2);
```
![sample](/lib/images/tokenBoxDividers.png)

### tokenBox
```
tokenBox(size=[100,50,20], hexBottom=0, corner=3, containersX=1, containersY=1, wallThickness=1.2);
```
![sample](/lib/images/tokenBox.png)
