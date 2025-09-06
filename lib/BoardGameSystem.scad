/* 
    BoardGame System v 1.0 31.3.2024 by Martin Kaspar
*/

module divider(size=[92,68,1.4], corner=3, txtLabel="Divider", txtSize=8, txtFont="Arial"){
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

module straightDivider(size=[92,68,1.4], corner=3, txtLabel="Divider", txtSize=8, txtFont="Arial"){
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


module cardBox(size=[10,10,10], hexBottom=0, corner=0, 
    containers=1, widthCutout=20, wallThickness=1.2, txtLabel="", txtSize=8, txtFont="Arial"){
    difference() {
        roundedBox(size,corner);
        translate([wallThickness,wallThickness,wallThickness])
            roundedBox([size[0]-wallThickness*2, size[1]-wallThickness*2, size[2]],corner-1);
        translate([size[0]/2,size[1]/2,0.3])
            linear_extrude(2)
                text(txtLabel,size=txtSize, font=txtFont, halign="center", valign="center");
        if (containers>0)
        {
            // Cut out
            sectionWidth = size[0] / containers;
            offset = sectionWidth/2 - widthCutout/2;
            for (i=[0:containers-1]){
                difference(){
                    translate([(i*sectionWidth) + offset,0,0])
                        cube([widthCutout,wallThickness,size[2]]);
                }
            }
        }
    }
    if (containers>1)
    {
        // Dividers
        for (i=[1:containers-1]){
            translate([i*size[0]/containers,0,0]) cube([wallThickness,size[1],size[2]]);
        }
    }
}


/*full box with rounded corners*/
module roundedBox(size=[10,10,10], corner=0){
    if (corner>0){       
        $fn=32;
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
        cube(size);
    }
}

/*token box*/
module tokenBox(size=[10,10,10], hexBottom=0, corner=0, 
    containersX=1, containersY=1,
    wallThickness=1.2, txtLabel="", txtSize=8, txtFont="Arial"){
    if (hexBottom<1) {
        difference() {
            roundedBox(size,corner);
            translate([wallThickness,wallThickness,wallThickness])
                roundedBox([size[0]-wallThickness*2, size[1]-wallThickness*2, size[2]],corner-1);
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
    if (containersX>1)
    {
        for (i=[1:containersX-1]){
            translate([i*size[0]/containersX,0,0]) cube([wallThickness,size[1],size[2]]);
        }
    }

    if (containersY>1)
    {
        for (i=[1:containersY-1]){
            translate([0,i*size[1]/containersY,0]) cube([size[0],wallThickness,size[2]]);
        }
    }
}

module tokenBoxDividers(size=[10,10,10], hexBottom=0, corner=0, 
    containersX=[], containersY=[],
    wallThickness=1.2, txtLabel="", txtSize=8, txtFont="Arial"){
    if (hexBottom<1) {
        difference() {
            roundedBox(size,corner);
            translate([wallThickness,wallThickness,wallThickness])
                roundedBox([size[0]-wallThickness*2, size[1]-wallThickness*2, size[2]],corner-1);
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
    if (len(containersX)>0)
    {
        for (i=[0:len(containersX) -1]){
            translate([containersX[i],0,0]) cube([wallThickness,size[1],size[2]]);
        }
    }

    if (len(containersY)>0)
    {
        for (i=[0:len(containersY) -1]){
            translate([0,containersY[i],0]) cube([size[0],wallThickness,size[2]]);
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
