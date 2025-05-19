$fs=0.1;
$fa=1;

thickness_bottom=2;
radius_inner=10;
radius_outer=12;
height=30;
height_handle=15;
length_handle=10;
radius_handle=3;
radius_handle_corner=3;
module body_outer(){
    cylinder(height, radius_outer,radius_outer);
}
module body() { difference(){
    body_outer();
    translate([0,0,thickness_bottom])
    cylinder(height+5, radius_inner,radius_inner);
}}
body();
//handle vertical
translate([radius_outer+length_handle,0,2*radius_handle]) cylinder(height-4*radius_handle,radius_handle,radius_handle);
//handle connector bottom
module handle_bottom(){
    difference(){
        
        translate([0,0,radius_handle]) 
        rotate([0,90,0])
        cylinder(length_handle-radius_handle+radius_outer,radius_handle,radius_handle);
        body_outer();
    }   
}
handle_bottom();
translate([radius_outer+length_handle-radius_handle,0,radius_handle*2])rotate([90,90,0])  rotate_extrude(angle=90){
translate([radius_handle,0,0])circle(radius_handle);
}
//handle connector top
module handle_top(){
    difference(){
        translate([0,0,height-radius_handle]) rotate([0,90,0])         cylinder(length_handle-radius_handle+radius_outer,radius_handle,radius_handle);
        body_outer();
    }
    
}
handle_top();

translate([radius_outer+length_handle-radius_handle,0,2*radius_handle+height-4*radius_handle])rotate([90,0,0])  rotate_extrude(angle=90){
translate([radius_handle,0,0])circle(radius_handle);
} 