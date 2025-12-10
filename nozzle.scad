$fn = 64;
round_corner = 15;

nozzle_kit();

module nozzle_kit() {
    difference() {
        nozzle();
        translate([0,0,-1])
        scale([0.95, 0.95, 1])
        color("red")
        nozzle();
        translate([0,0,120])
        cylinder(d=25-4, h=15, center = true);
    }
}
module nozzle(){
    hull() {
        frame_square();
        translate([0, 0, 120])
        frame_ring();
    }
}

//hull() {
//    frame_square();
//    translate([0, 0, 120])
//    cylinder(d=25, h=1, center = true);
//}

module frame_ring() {
    difference() {
        cylinder(d=25, h=1, center = true);
        color("red")
        cylinder(d=25-6, h=6, center = true);
    }
}

module frame_square() {
    difference() {
        square_plate();
        translate([0, 0, 1])
        color("red")
        scale([0.95, 0.95, 4])
        square_plate();
    }
}

module square_plate(){ 
    hull() {
        //cube([129-round_corner, 129, 1], center = true);
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
        
        mirror([1, 0, 0])
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
        
        mirror([0, 1, 0])
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
        
        mirror([1, 1, 0])
        translate([129/2-round_corner/2, 129/2-round_corner/2, 0])
        color("red")
        cylinder(d = round_corner, h = 5, center = true);
    }
}