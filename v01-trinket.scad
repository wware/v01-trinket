HEIGHT=8;
$fn = 120;
S = 20;
L = 2;

module trinket() {
    color([.5,1,1])
    translate([0,0,-HEIGHT/2])
    difference() {
        cylinder(d=18, h=HEIGHT);
        translate([0,0,-1])
            cylinder(d=12, h=HEIGHT+2);
    }

    color([.5,1,1])
    translate([11,0,-HEIGHT/2])
    union() {
        translate([0,-9,0])
        cube([3,18,HEIGHT]);
        translate([-2.9,6,0])
        cube([3,3,HEIGHT]);
    }

    color([.5,1,1])
    difference() {
        translate([-2,0,-1.5])
        cube([15,19,3]);
        union() {
            translate([0,0,-HEIGHT/2-1])
            cylinder(d=15, h=HEIGHT+2);
            translate([6,14,-HEIGHT/2-1])
            cylinder(d=5, h=HEIGHT+2);
            difference() {
                translate([-S,-S,-S])
                cube([2*S,2*S,2*S]);
                translate([6,7,0])
                rotate([0,0,45])
                translate([-S/2,-S/2,-HEIGHT/2])
                cube([S,S,HEIGHT]);
            }
        }
    };
    
    // legs
    translate([-7.5,0,-HEIGHT/2-L+0.1])
        cylinder(d=0.5, h=L);
    translate([12.5,0,-HEIGHT/2-L+0.1])
        cylinder(d=0.5, h=L);
};

trinket();