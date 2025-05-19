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
module body_outer(){
    cylinder(height, radius_outer,radius_outer);
}

//handle connector bottom
module handle_bottom(){
difference(){
    
    translate([0,0,radius_handle]) 
    rotate([0,90,0])
    cylinder(length_handle-radius_handle+radius_outer,radius_handle,radius_handle);
    cylinder(height, radius_outer,radius_outer);
    
}
}
handle_bottom();
