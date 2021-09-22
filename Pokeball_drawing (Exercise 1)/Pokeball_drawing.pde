PImage pokemon;

float x;
float y;

void setup() {
  size(640,640);
  pokemon = loadImage("Pokeball.png");
  background(0,0,250);
}

void draw() {
//if (mousePressed) {
  float x = mouseX;{
  float y = mouseY;
  ellipseMode(CENTER);
  rectMode(CENTER);
  color c = pokemon.get(int(x),int(y));
  fill(c);
  noStroke();
  //line(mouseX, mouseY, pmouseX, pmouseY);
  ellipse(mouseX, mouseY, 6, 6);
 }
 
}
