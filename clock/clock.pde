float rotSeconds = 0;
float rotMinutes = 0;
float rotHours = 0;
int lastSecond = 0;
int lastMinute = 0;
int lastHour = 0;
PFont f;

float faceSize = 600;
float lengthSecondHand = 220;
float lengthMinuteHand = 200;
float lengthHourHand = 100;

color outlineCol = color(0,0,0);
color secondCol = color(255, 0, 0);
color faceColour = color(173, 216, 230);

void setup() {
  size(800, 600, P2D); 
  strokeWeight(2);
  f = createFont("Arial",60,true);
}

void draw() {
  int s = second();
  int m = minute();
  int h = hour();
  
  
  if (m != lastMinute) {
    rotMinutes = ((float) m / 60) * TWO_PI; 
    lastMinute = m;
  }
  
  if (h != lastHour) {
    rotHours = ((float) h / 12) * TWO_PI;  
    println(h); // prints current hour
    lastHour = h;
  }
  
  if (h >= 1 && h < 5){
    faceColour = color(173, 216, 230);
  }
  
  if (h >= 5 && h < 7){
    faceColour = color(207, 185, 151);
  }
  
  if (h >= 7 && h < 11){
    faceColour = color(173, 216, 230);
  }
  
  if (h >= 11 && h < 13){
    faceColour = color(0, 0, 255);
  }
  
  if (h >= 13 && h < 17){
    faceColour = color(173, 216, 230);
  }
  
  if (h >= 17 && h < 19){
    faceColour = color(207, 185, 151);
  }
  
  if (h >= 19 && h < 23){
    faceColour = color(173, 216, 230);
  }
  
  if (h >= 23 || h < 1){
    faceColour = color(0, 0, 255);
  }
  
  fill(faceColour);
  stroke(outlineCol);
  ellipse(width/2, height/2, faceSize, faceSize);
  
  
  stroke(0, 127, 255, 44);
  for(int i=0; i<12; i++) {
    float rot = ((float) i/12) * TWO_PI;
    pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    //line(0, faceSize/5, 0, faceSize/2);
    popMatrix();
  }
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotMinutes);
  fill(0);
  stroke(outlineCol);
  line(0, 0, 0, -lengthMinuteHand);
  ellipse(0, -lengthMinuteHand, 10,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotHours);
  line(0, 0, 0, -lengthHourHand);
  ellipse(0, -lengthHourHand, 10,10);
  popMatrix();
  
  
  
  //println(s);
  
  fill(faceColour);
  ellipse(width/2, height/2, 10, 10);
  
  textFont(f,30);
    fill(0);
    textAlign(CENTER);
    text("HIGH TIDE", width/2, 70);
    text("LOW TIDE", width/2, 560);
  
  textFont(f,50);
    fill(0);
    textAlign(CENTER);
    text("5", 520, 110);
    text("1", 280, 110);
    text("4", 600, 200);
    text("2", 180, 200);
    text("3", 650, 320);
    text("3", 150, 320);
    text("2", 600, 430);
    text("4", 180, 440);
    text("1", 520, 525);
    text("5", 280, 525);
}
