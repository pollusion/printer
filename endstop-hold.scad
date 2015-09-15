
include<MCAD/nuts_and_bolts.scad>

rod=8;
nutlen=2.4;
tol=.2;

w=rod+2*5;
rodpos=rod/2+5.5+6;
l=28+8+rodpos;
hght=10;

difference() {
    cube([w,l,hght]);
    translate([(w-rod+.5)/2,-1,-1]) cube([rod-.5,rodpos,hght+2]);
    translate([w/2,rodpos,-1]) cylinder(h=hght+2,r=(rod/2)+tol,$fn=36);
    translate([-.001,2.75+3,hght/2]) rotate(90,[0,1,0]) {
        nutHole(size=3,tolerance=0.2);
        translate([0,0,-1]) cylinder(h=w+2,r=1.5+tol,$fn=36);
    }
    translate([-1,rodpos+rod/2+6,-1]) cube([w/2+2+1,l-rodpos-rod/2-6+1,hght+2]);
    for (y=[28,28-3.5,28-7,28+3.5]) {
    translate([-.001,rodpos+y,hght/2]) rotate(90,[0,1,0]) {
        //nutHole(size=3,tolerance=0.2);
        cylinder(h=w+2,r=1.5+tol,$fn=36);
    }
}
}