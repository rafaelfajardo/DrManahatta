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
*/

void drawM(int inX, int inY) {

// make relative to smallest x, y (20,20) 
color bb = color(80,100,128);
color hh = color(255,255,255);
color kk = color(0,0,0);

stroke(bb);
line(inX+20,inY+35,inX,inY+35);
line(inX+40,inY+35,inX+60,inY+35);

line(inX+20,inX+55,inX+20,inY+79);
line(inX+40,inX+55,inX+40,inY+79);

stroke(bb);
fill(bb);
rectMode(CENTER);
rect(inX+30,inY+30,20,50);

fill(bb);
stroke(bb);
ellipse(inX+30,inY+5,50,50);
stroke(kk);
fill(kk);
ellipse(inX+20,inY+20,4,2);
ellipse(inX+40,inY+20,4,2);
noFill();
stroke(hh);
ellipse(inX+30,inY+5,10,10);
fill(hh);
ellipse(inX+30,inY+5,2,2);
ellipse(inX+30,inY,2,2);


}

int MX, MY ;

void setup() {
 size(400,400) ;
 background(150) ;
 frameRate(8) ;
 MX = 50 ;
 MY = 50 ;
 // drawM(50,50) ;
}

void draw() {
 MX += 2 ;
 MY += 2 ;
 background(150) ;
 drawM(MX,MY) ;
}


