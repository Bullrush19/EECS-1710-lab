PImage person;
PFont f;
int px, py;
int savedTime;
float totalTime = random(2000, 5000);
int k, l, go, lives;
int win;

void setup(){
  size(1920,1080);
  savedTime = millis();
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  px = 100;
  py = 540;
  k = 0;
  l = 255;
  go = 1;
  lives = 3;
  person = loadImage("walking.png");
  win = 1;
}

void person() {
  strokeWeight(5);
  rectMode(CENTER);
  rect(px,py, 100, 100);
  //fy = fy + dy;
  move();
}

void draw() {
  if (win == 1){
    background(k,l,0);
    strokeWeight(10);
    line(155,0,155,1080);
    line(1760,0,1760,1080);
    person();
    win();
    // Calculate how much time has passed
    int passedTime = millis() - savedTime;
    // Has five seconds passed?
    if (passedTime > totalTime ) {
      if (k == 0) {
        println("Red Light!");
        k = 255;
        l = 0;
        //background(255, 0, 0); // Color a new background
        savedTime = millis(); // Save the current time to restart the timer!
        go = 0;
        println(totalTime);
        totalTime = random(2000, 5000);
      }
      else {
        println("Green Light!");
        k = 0;
        l = 255;
        //background(255, 0, 0); // Color a new background
        savedTime = millis(); // Save the current time to restart the timer!
        go = 1;
        println(totalTime);
        totalTime = random(2000, 5000);
      }
  }
  }
  if (win == 0){
    background (0,0,900);
    textFont(f,150);
    fill(255, 255, 255);
    textAlign(CENTER);
    text("YOU WIN!", width/2, height/2);
  }
}

void move(){
  if (mousePressed) {
    px += 2;
    if (go != 1) {
    px = 100;
    //lives -= 1;
    //println("Lives", lives,"!");
  }
  }
  
}

void win(){
  if (px > 1820){
    win = 0;
    println("YOU WIN");
}
}
