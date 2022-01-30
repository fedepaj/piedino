$fn=90;
extra=0.2;
bottom=1;
top=(3/4)*bottom;
nut=0.6;
nut_h=0.2;
nut_num_l=6;
bolt=0.4;
distance=1;
layer=0; //=0:print; =-1:show at stop layer >0 cut at value layer 
layer_heigth=0.3;

difference(){
    difference(){
        hull(){
            cylinder(d=top,h=distance);
            cylinder(d=2*bottom,h=0.2*distance);
        }
        translate([0,0,(1/2)*distance])cylinder(d=nut+extra,h=nut_h+extra,$fn=nut_num_l);
        cylinder(d=bolt,h=distance);

    }   
    if (layer==0){
        stop_layer=(1/2)*distance+nut_h+extra;
        echo(stop_layer);
    }
    else if (layer<0){
        stop_layer=(1/2)*distance+nut_h+extra;
        translate([0,0,stop_layer])cylinder(d=2*bottom,h=distance);
        echo(stop_layer);
    }
    else if (layer>0){
        translate([0,0,layer])cylinder(d=2*bottom,h=distance);}
    
}
