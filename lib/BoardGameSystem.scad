/*
    Based on
    BoardGame System v 1.0 31.3.2024 by Martin Kaspar
*/
module dividerCutout(size=[80,60,1.2], corner=10, cutoutWidth=25, cutoutDepth=40){
    width = size[0];
    height = size[1];
    wallThickness = size[2];
    difference(){
        cube([wallThickness, width, height]);
        translate([0,(width-cutoutWidth-corner*2)/2,height-cutoutDepth])
            cube([wallThickness, cutoutWidth+(corner*2), cutoutDepth]);
        translate([0, (width)/2,height-cutoutDepth])
        rotate([0,90,0]){
            cylinder(r=(cutoutWidth)/2, h=wallThickness);
      }
    }
    translate([0,width/2,height-cutoutDepth]){
        cutoutFiller(cutoutWidth=cutoutWidth, corner=corner, cutoutHeight=cutoutDepth, wallThickness=1.2);
    }
}

module dividerCutoutLying(size=[80,60,1.2], corner=3, cutoutWidth=30, cutoutDepth=40){
    width = size[0];
    height = size[1];
    wallThickness = size[2];

    difference(){
        cube([width, height, wallThickness]);
        translate([(width-cutoutWidth-corner)/2,0,0])
            cube([cutoutWidth, cutoutDepth-(cutoutWidth/2), wallThickness]);
        translate([(width-corner)/2,cutoutDepth-(cutoutWidth/2),0])
            cylinder(r=(cutoutWidth-corner*2)/2, h=wallThickness);
    }
    translate([(width-cutoutWidth-corner)/2, corner, 0]) {
        cylinder(r=corner, h=wallThickness);
        cube([corner, height-corner, wallThickness]);
    }
    translate([(width-cutoutWidth-corner)/2+cutoutWidth, corner, 0]) {
        cylinder(r=corner, h=wallThickness);
        translate([-corner,0,0])
        cube([corner, height-corner, wallThickness]);
    }
}

module divider(size=[92,68,1.2], corner=3, txtLabel="Divider", txtSize=8, txtFont="Arial"){
    difference(){
        union(){
        roundedBox([size[0],size[1]-4,size[2]],corner);
        translate([-2,size[1]-24,0])
            roundedBox([size[0]+4,20,size[2]],corner);
        //ousko
        translate([-2,size[1]-5-corner*2,0])
            roundedBox([size[0]/1.5,16,size[2]],corner);
        }

        translate([size[0]/4+5,size[1]-6,0.4])
            linear_extrude(5)
                text(txtLabel,size=txtSize, halign="center", font=txtFont);
        translate([10,10,-1])
            roundedBox([size[0]/2-15, size[1]-25, 5], corner);
        translate([size[0]/2+5,10,-1])
            roundedBox([size[0]/2-15, size[1]-25, 5], corner);
   }
}

module straightDivider(size=[92,68,1.2], corner=3, txtLabel="Divider", txtSize=8, txtFont="Arial"){
    difference(){
        union(){
        roundedBox([size[0],size[1]-4,size[2]],corner);
        translate([0,size[1]-5-corner*2,0])
            roundedBox([size[0]/1.5,16,size[2]],corner);
        }

        translate([size[0]/4+5,size[1]-6,0.4])
            linear_extrude(5)
                text(txtLabel,size=txtSize, halign="center", font=txtFont);
        translate([10,10,-1])
            roundedBox([size[0]/2-15, size[1]-25, 5], corner);
        translate([size[0]/2+5,10,-1])
            roundedBox([size[0]/2-15, size[1]-25, 5], corner);
   }
}


module cardBox(size=[100,50,40], corner=0, containers=1, cutoutWidth=20, wallThickness=1.2, txtLabel="", txtSize=8, txtFont="Arial") {
    boxLength = size[0];
    boxDepth = size[1];
    boxHeight = size[2];
    sectionWidth = boxLength / containers;
    threshold = (sectionWidth - cutoutWidth)/2 - corner*3;
    if (threshold < 0) {
        echo ("===========================================================================");
        echo ("Warning: cutoutWidth too large for the number of containers.");
        echo ("There will be artifacts in the corners.");
        echo ("===========================================================================");
    }

    offset = sectionWidth/2 - cutoutWidth/2 - corner;

    difference() {
        roundedBox(size,corner);
        translate([wallThickness, wallThickness, wallThickness])
            roundedBox([boxLength-wallThickness*2, boxDepth-wallThickness*2, boxHeight],corner-1);
        translate([boxLength/2, boxDepth/2, 0.3])
            linear_extrude(2)
                text(txtLabel,size=txtSize, font=txtFont, halign="center", valign="center");
        if (containers>0)
        {
            // Cut out
            for (i=[0:containers-1]) {
                difference() {
                    translate([(i*sectionWidth) + offset,0,0])
                        cube([cutoutWidth+corner*2, wallThickness, boxHeight]);
                }
            }
        }
    }
    if (containers>1)
    {
        // Dividers
        for (i=[1:containers-1]) {
            translate([i*sectionWidth, 0, 0]) cube([wallThickness, boxDepth, boxHeight]);
        }

    }
    // Rounded corners
    for (i=[0:containers-1]) {
        // Left side
        rotate([90, 0, 0])
        translate([(i*sectionWidth) + offset, boxHeight - corner, -wallThickness])
            cylinder(r=corner, h=wallThickness);
        rotate([0, 0, 0])
        translate([(i*sectionWidth) + offset, 0, 0])
            cube([corner, wallThickness, boxHeight-corner]);
        // Right side
        rotate([90, 0, 0])
        translate([(i*sectionWidth) + cutoutWidth + corner*2 + offset, boxHeight - corner, -wallThickness])
            cylinder(r=corner, h=wallThickness);
        rotate([0, 0, 0])
        translate([(i*sectionWidth) + offset + cutoutWidth + corner, 0, 0])
            cube([corner, wallThickness, boxHeight-corner]);
    }
}

module cutoutFiller(cutoutWidth=20, corner=3, cutoutHeight=20, wallThickness=1.2) {
  translate([0, 0-cutoutWidth/2-corner,0])
  cube([wallThickness, corner, cutoutHeight-corner]);
  translate([0, 0-cutoutWidth/2-corner,  (cutoutHeight-corner)]) {
      rotate([90, 0, 90])
      cylinder(r=corner, h=wallThickness);
  }
  translate([0, cutoutWidth/2, 0]) {
  cube([wallThickness, corner, cutoutHeight-corner]);
  }
  translate([0, cutoutWidth/2+corner, (cutoutHeight-corner)]) {
  rotate([90, 0, 90])
  cylinder(r=corner, h=wallThickness);
  }
}

/*full box with rounded corners*/
module roundedBox(size=[100,100,20], corner=3, sidesOnly=true){
    if (corner>0){
        $fn=32;
        if (sidesOnly) {
            hull(){
                translate([corner,corner,0])
                    cylinder (r=corner, h=size[2]);
                translate([size[0]-corner,corner,0])
                    cylinder (r=corner, h=size[2]);
                translate([size[0]-corner,size[1]-corner,0])
                    cylinder (r=corner, h=size[2]);
                translate([corner,size[1]-corner,0])
                    cylinder (r=corner, h=size[2]);
            }
        } else {
            hull(){
                translate([corner,corner,corner]) sphere(r=corner);
                translate([size[0]-corner,corner,corner]) sphere(r=corner);
                translate([size[0]-corner,size[1]-corner,corner]) sphere(r=corner);
                translate([corner,size[1]-corner,corner]) sphere(r=corner);
                translate([corner,corner,corner]) cylinder(r=corner, h=size[2]-corner);
                translate([size[0]-corner,corner,corner]) cylinder(r=corner, h=size[2]-corner);
                translate([size[0]-corner,size[1]-corner,corner]) cylinder(r=corner, h=size[2]-corner);
                translate([corner,size[1]-corner,corner]) cylinder(r=corner, h=size[2]-corner);
            }
        }
    } else {
        cube(size);
    }
}

/*tokenBox*/
module tokenBox(size=[100,50,20], hexBottom=0, corner=3,
    containersX=1, containersY=1,
    wallThickness=1.2, txtLabel="", txtSize=8, txtFont="Arial", roundedBottom=false){
    if (hexBottom<1) {
        difference() {
            roundedBox(size, corner);
            translate([wallThickness,wallThickness,wallThickness])
                if(roundedBottom) {
                    roundedBox([size[0]-wallThickness*2, size[1]-wallThickness*2, size[2]],corner-1, sidesOnly=false);
                } else {
                    roundedBox([size[0]-wallThickness*2, size[1]-wallThickness*2, size[2]],corner-1);
                }
            translate([size[0]/2,size[1]/2,0.3])
                linear_extrude(2)
                    text(txtLabel,size=txtSize, font=txtFont, halign="center", valign="center");

        }
    } else{
        difference() {
            roundedBox(size,corner);
            translate([wallThickness,wallThickness,wallThickness])
                roundedBox([size[0]-wallThickness*2, size[1]-wallThickness*2, size[2]],corner-1);


           translate([3,3,-1])
           intersection(){
                roundedBox([size[0]-6, size[1]-6, wallThickness*2],corner-1);
                hexPlane(hexBottom,size[0],size[1],wallThickness*2);
            }

        }
        translate([size[0]/2,size[1]/2,0.3])
            linear_extrude(3)
                text(txtLabel,size=txtSize, font=txtFont, halign="center", valign="center");
    }

    if (is_list(containersX)) {
        if (len(containersX)>0) {
            for (i=[0:len(containersX) -1]){
                translate([containersX[i],0,0]) cube([wallThickness,size[1],size[2]]);
            }
        }
    } else if (containersX>1) {
        for (i=[1:containersX-1]){
            translate([i*size[0]/containersX,0,0]) cube([wallThickness,size[1],size[2]]);
        }
    }

    if (is_list(containersY)) {
        if (len(containersY)>0) {
            for (i=[0:len(containersY) -1]){
                translate([0,containersY[i],0]) cube([size[0],wallThickness,size[2]]);
            }
        }
    } else if (containersY>1) {
        for (i=[1:containersY-1]){
            translate([0,i*size[1]/containersY,0]) cube([size[0],wallThickness,size[2]]);
        }
    }
}


module hexPlane(radius, x,y, height){
    maxX=x/(radius*3.4);
    maxY=y/(radius);
    for (y=[0:maxY])
        for(x=[0:maxX])
            translate([x*radius*3.4+(y%2*radius*1.7),y*radius,0])
                cylinder(r=radius, h=height, $fn=6);
}
