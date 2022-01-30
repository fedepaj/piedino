# piedino
Piedino is a little 3d printable support for pcb boards.

## How to use
1. Open the file in openscad ide
2. Set the mesaures
      ```
      extra=<tolerance>;
      bottom=<bottom base>;
      top=<top base>;
      nut=<nut width>;
      nut_h=<nut heigth>;
      nut_num_l=<number of sides of the nut>;
      bolt=<bolt diamter>;
      distance=<height of the foot>;
      layer=0; //=0:print; =-1:show at stop layer >0 cut at value layer 
      layer_height=<layer height>;
      ```
3. Compile
4. After compiling note the line `ECHO: <some layer value>`
  - This will be the layer you will need to stop printing to insert the nut
6. Export Stl
7. Slice it with you favorite software and remeber to pause the print at the value printed in the console.
