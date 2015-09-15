
include<mcad/nuts_and_bolts.scad>

w=12;
l=30;
h=20;
rod=8;
nutlen=2.4;

rotate(-90,[0,1,0])
difference() {
  cube([w,l,h]);
  translate([0,8,h/2]) rotate(90,[0,1,0]) cylinder(h=30,r=rod/2+.1,center=true, $fn=36);
  translate([-1,8,(h-nutlen-.2)/2]) cube([w+2,l-8-10,nutlen+.2]);
  translate([w/2,15,-.1]) {
      nutHole(size=3, tolerance=.1);
      translate([0,0,-1]) cylinder(h=50,r=1.6,$fn=36,center=true);
  }
  translate([w/2,l-5,-.1]) {
      nutHole(size=3, tolerance=.1);
      translate([0,0,-1]) cylinder(h=50,r=1.6,$fn=36,center=true);
  }
}

translate([10,0,0])
difference () {
    cylinder(h=3,r=5);
    translate([0,0,-1]) cylinder(h=10,r=1.6);
}