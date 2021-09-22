PImage pokemon;

float x;
float y;

void setup() {
  size(640,640);
  pokemon = loadImage("Pokeball.png");
  background(0,0,250);
}

//void draw() {
  //image(pokemon, 0, 0);
  //for (int i = 0; i < 1000; i++) {
    //float x = random(width);
    //float y = random(height);
   // color c = pokemon.get(int(x),int(y));
   // fill(c);
   // noStroke();
   // ellipse(mouseX,mouseY,16,16);
 // }
  
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
