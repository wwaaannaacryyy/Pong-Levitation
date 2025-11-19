echo("Работа Пушкарева Глеба");
$fn=64;
round_corner = 15;

//translate([0, 0, 10])
//color("green")
//cube([129, 129, 1], center = true);


nozzle_kit();
translate([0, 0, 120+20/2+0])

trumpet();

module trumpet() {
    difference(){
        cylinder(d1=25, d2=40, h=20, center=true);
        translate([0,0,2])
        scale([0.95, 0.95, 1])
        color("red")
        cylinder(d1=25, d2=40, h=20, center=true);
        translate([0,0,-10])
        color("green")
        cylinder(d=25-2, h=20, center=true);
    }
}
