float scaleAmp = 1000;
float scaleFreq = 1000;

float maxThreshold = 0.1;
float minThreshold = 0.05;
int fx, fy, g, Vfy, dy, dx;

void setup() {
  size(800, 600, P2D);  
  setupSound();
}

void draw() {
  updateSound();
  
  float amp = getAmp();
  
  
  if (amp > maxThreshold) {
    stroke(0);
    fill (random(0, 100), random(0,100), random(0,100));
    ellipse(random(width), random(height), 200, 200);
  } 
    
}
