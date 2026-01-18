# Board game inserts

These inserts are designed to have no lid lift. If possible, all expansions should also be included in the main box.

The games are usually stored vertically and the content should stay in place even when the box is moved, transported or turned over to read the back.

The games should be easy to setup and where possible, the inserts should be reusable as component trays during play. Just lift them out of the box and put them on the table and go.

Generated stl-files are located in the stl subfolder.

Using a modified https://github.com/beavisCZ/BoardGameSystem as lib to generate component boxes for inserts.

## Black Orchestra
Insert for Black Orchestra.

![Insert](/lib/images/Black_Orchestra.png)

Build STLs with script
```
cd Black_Orchestra
./buildAll.sh
```

## Calico
Insert for Calico

![Insert](/lib/images/Calico.png)

Build STLs with script
```
cd Calico
./buildAll.sh
```

## Carson City
Insert for Carson City Big Box

![Insert](/lib/images/Carson_City.png)

Build STLs with script
```
cd Carson_City
./buildAll.sh
```

## Council of 4
Insert for Council of 4

![Insert](/lib/images/Council_of_4.png)

Build STLs with script
```
cd Council_of_4
./buildAll.sh
```

## Keyflower
Insert for Keyflower

![Insert](/lib/images/Keyflower.png)

Build STLs with script
```
cd Keyflower
./buildAll.sh
```

## Mombasa
Insert for Mombasa

![Insert](/lib/images/Mombasa.png)

Build STLs with script
```
cd Mombasa
./buildAll.sh
```

## Quadropolis
Insert for Quadropolis

![Insert](/lib/images/Quadropolis.png)

Build STLs with script
```
cd Quadropolis
./buildAll.sh
```

## Ra
Insert for Ra

![Insert](/lib/images/Ra.png)

Build STLs with script
```
cd Ra
./buildAll.sh
```
Use this for bidding tiles https://makerworld.com/en/models/977192-ra-the-boardgame-2023-ed-box-organiser

## Red Cathedral
Insert for Red Cathedral

![Insert](/lib/images/Red_Cathedral.png)

Build STLs with script
```
cd Red_Cathedral
./buildAll.sh
```

## Scythe
Insert for Scythe.

![Insert](/lib/images/Scythe.png)

Build STLs with script
```
cd Scythe
./buildAll.sh
```

## Tekhenu
Insert for Tekhenu.

![Insert](/lib/images/Tekhenu.png)

Build STLs with script
```
cd Tekhenu
./buildAll.sh
```


## Teotihucan
Insert for Teotihucan.

![Insert](/lib/images/Teotihuacan.png)

Build STLs with script
```
cd Teotihuacan
./buildAll.sh
```

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

### tokenBox
```
tokenBox(size=[100,50,20], hexBottom=0, corner=3, containersX=1, containersY=1, wallThickness=1.2);
```
![sample](/lib/images/tokenBox.png)
