$fs=0.1;
$fa=1;

thickness_bottom=2;
radius_inner=10;
radius_outer=12;
height=30;
height_handle=15;
length_handle=5;
radius_handle=2;
radius_handle_corner=3;
difference(){
    cylinder(height, radius_outer,radius_outer);
    translate([0,0,thickness_bottom])
    cylinder(height+5, radius_inner,radius_inner);
}
//handle vertical
translate([radius_outer+length_handle,0,2*radius_handle]) cylinder(height-4*radius_handle,radius_handle,radius_handle);
//handle connector bottom
translate([radius_outer,0,radius_handle]) rotate([0,90,0]) cylinder(length_handle-radius_handle,radius_handle,radius_handle);


translate([radius_outer+length_handle-radius_handle,0,radius_handle*2])rotate([90,90,0])  rotate_extrude(angle=90){
translate([radius_handle,0,0])circle(radius_handle);
}
//handle connector top
translate([radius_outer,0,height-radius_handle]) rotate([0,90,0]) cylinder(length_handle-radius_handle,radius_handle,radius_handle);


translate([radius_outer+length_handle-radius_handle,0,2*radius_handle+height-4*radius_handle])rotate([90,0,0])  rotate_extrude(angle=90){
translate([radius_handle,0,0])circle(radius_handle);
} 