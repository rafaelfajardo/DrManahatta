class DrM {

  int x, y ;  // current location of Dr. M
  int vx, vy ;  // velocity x, velocity y


    DrM(int inX, int inY, int inVx, int inVy) {
    x = inX ;
    y = inY ;
    vx = inVx ;
    vy = inVy ;
  }

  void drawM() {

    // make relative to smallest x, y (20,20) 
    color bb = color(80, 100, 128);
    color hh = color(255, 255, 255);
    color kk = color(0, 0, 0);

    stroke(bb);
    line(x+20, y+35, x, y+35);
    line(x+40, y+35, x+60, y+35);

    line(x+20, y+55, x+20, y+79);
    line(x+40, y+55, x+40, y+79);

    stroke(bb);
    fill(bb);
    rectMode(CENTER);
    rect(x+30, y+30, 20, 50);

    fill(bb);
    stroke(bb);
    ellipse(x+30, y+5, 50, 50);
    stroke(kk);
    fill(kk);
    ellipse(x+20, y+20, 4, 2);
    ellipse(x+40, y+20, 4, 2);
    noFill();
    stroke(hh);
    ellipse(x+30, y+5, 10, 10);
    fill(hh);
    ellipse(x+30, y+5, 2, 2);
    ellipse(x+30, y, 2, 2);
  }

  void updateLocation() {
    x += vx ;
    if ((x > width) || (x < 0) ) {
      x -= vx ;
      vx *= -1 ;
    }

    y += vy ;
    if ( (y > height) || (y < 0) ) {
      y -= vy ;
      vy *= -1 ;
    }
  }
}

