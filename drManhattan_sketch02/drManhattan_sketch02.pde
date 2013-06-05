/**
*  drmanhattan
*  using the "keyhole figure" model
*  head radius is 1/4 total height
*  head diameter is 1/2 total height
*  torso is drawn from center point
*  torso width is 1/5 total height
*  torso height is 1/2 total height
*  
*  the centerpoint of the figure is the centerpoint of the torso
*  the centerpoint of the head is 1/4 height above centerpoint of figure
*  if xLoc and yLoc of figure is centerpoint of torso, then yHead is yLoc + height/4
*  
*  limbs will attach to the torso such that
*  drawn from point of contact out
*  arms
*  x1, y1, x2, y2
*  height/2 - height/10, height/2 + height/20, variableX2, variableY2
*  x3, y3, x4, y4
*  height/2 + height/10, height/2 + height/20, variableX4, variableY4
*  
*  x1, y1, & x3, y3 are shoulder-joint attachment points for each arm
*  variables x2, y2, & x4, y4 are anywhere within a radius of height/2 - height/20
*
*  elbows are currently undefined
*
*  legs
*  x5, y5, x6, y6
*  height/2 - height/10, height/2 + height/4, variableX6, variableY6
*  x7, y7, x8, y8
*  height/2 + height/10, height/2 + height/4, variableX8, variableY8
*  
*  x5, y5, & x7, y7 are hip-joint attachment points for each leg
*  variables x6, y6, & x8, y8 are anywhere within a radius of height/4
*  
*  knees are currently undefined
*  
*  will need to define the spatial relationship between eyes and hydrogen symbol
*  hydrogen symbol hh is height/10 in diameter (electron orbit)
*  default position is center of head
*  electron symbol is centered on x and height/20 above orbit center
*  proton symbol is centered on default position
*  electron and proton symbols are 2*height/100 in size
*  
*  eyes are 4*height/100 wide by 2*height/100 high
*  eyes are symmetrical by default
*  eyes are height/10 away from centerline to start
*  eyes are height/2 - height/10 vertically to start
*  
*/

color bb = color(80,100,128);
color hh = color(255,255,255);
color kk = color(0,0,0);

stroke(bb);
line(40,55,20,55);
line(60,55,80,55);

line(40,75,40,99);
line(60,75,60,99);

stroke(bb);
fill(bb);
rectMode(CENTER);
rect(50,50,20,50);

fill(bb);
stroke(bb);
ellipse(50,25,50,50);
stroke(kk);
fill(kk);
ellipse(40,40,4,2);
ellipse(60,40,4,2);
noFill();
stroke(hh);
ellipse(50,25,10,10);
fill(hh);
ellipse(50,25,2,2);
ellipse(50,20,2,2);

