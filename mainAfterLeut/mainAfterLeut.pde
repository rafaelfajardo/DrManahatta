
DrM[] drdre = new DrM[100];

void setup() {
  for (int i = 0; i < drdre.length; i++)
  {
    drdre[i] = new DrM(int(random(100, 300)), 
                       int(random(100, 300)), 
                       int(random(-2, 2)), 
                       int(random(-2, 2)));
  }

  size(400, 400) ;
  background(150) ;
  frameRate(12) ;
}

void draw() {
  background(150) ;

  for (int i = 0; i < drdre.length; i++)
  {
    drdre[i].updateLocation();
    drdre[i].drawM();
  }
}

