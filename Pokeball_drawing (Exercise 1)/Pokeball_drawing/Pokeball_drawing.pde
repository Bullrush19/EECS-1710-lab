// Bennett Turnbull - Exercise 1

PImage pokemon;

float x;
float y;

void setup() {
  size(640,640);
  pokemon = loadImage("Pokeball.png");
  background(0,0,250);
}

void draw() {
  float x = mouseX;{
  float y = mouseY;
  ellipseMode(CENTER);
  color c = pokemon.get(int(x),int(y)); //Pulls colour for dots from picture based on mouse location
  fill(c);
  noStroke();
  ellipse(mouseX, mouseY, 6, 6);
 }
 
}
