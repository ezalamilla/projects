PShape steve;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("Steve.png");
  steve = loadShape("steve.obj");
  steve.setTexture(txtr);
}


void draw () {
  background (0);
  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (50);
  shape (steve);
  popMatrix();

  theta+=.01; //increment angle
}
