$fn=90;
extra=0.2;
bottom=7;
top=bottom;
nut=6;
nut_h=2;
nut_num_l=6;
bolt=4;
distance=5;
layer=0; //=0:print; =-1:show at stop layer >0 cut at value layer 
layer_heigth=.3;

difference(){
    union(){
    difference(){
        hull(){
            cylinder(d=top,h=distance);
            cylinder(d=bottom,h=0.2*distance);
        }
        translate([0,0,0.5*(distance-nut_h)])cylinder(d=nut+extra,h=nut_h+extra,$fn=nut_num_l);
        cylinder(d=bolt+extra,h=distance);

    }   
    cylinder(d=bottom,h=0.2*distance);
}
    if (layer==0){
        stop_layer=((1/2)*(distance+nut_h+extra))/layer_heigth;
        echo(stop_layer);
    }
    else if (layer<0){
        stop_layer=((1/2)*(distance+nut_h+extra))/layer_heigth;
        translate([0,0,stop_layer*layer_heigth])cylinder(d=2*bottom,h=distance);
        echo(stop_layer);
    }
    else if (layer>0){
        translate([0,0,layer])cylinder(d=2*bottom,h=distance);}
    
}
