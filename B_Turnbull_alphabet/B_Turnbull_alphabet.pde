
ArrayList<Circle> circles;
ArrayList<PVector> locations;
PImage img;
int lk = 0;

void setup() {
  size(800, 800);
  locations = new ArrayList<PVector>();
  if (lk == 0) {
    img = loadImage("a.jpg");
  }
  img.loadPixels();
  for (int x = 0; x < img.width; x ++) {
    for (int y = 0; y < img.height; y ++) {
      int index = x + y * img.width;
      color c = img.pixels[index];
      float b = brightness(c);
      if (b > 1) {
        locations.add(new PVector(x,y));
      }
    }
  }
  circles = new ArrayList<Circle>();
}

void draw() {
  background(0);
  
  if (keyPressed) {
    if (key == 'a' || key == 'A') {
      lk = 1;
      img = loadImage("a.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      lk = 1;
      img = loadImage("b.jpg");
      setup();
    }
  }
  
  if (keyPressed) {
    if (key == 'c' || key == 'C') {
      lk = 1;
      img = loadImage("c.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'd' || key == 'D') {
      lk = 1;
      img = loadImage("d.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'e' || key == 'E') {
      lk = 1;
      img = loadImage("e.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'f' || key == 'F') {
      lk = 1;
      img = loadImage("f.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'g' || key == 'G') {
      lk = 1;
      img = loadImage("g.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'h' || key == 'H') {
      lk = 1;
      img = loadImage("h.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'i' || key == 'I') {
      lk = 1;
      img = loadImage("i.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'j' || key == 'J') {
      lk = 1;
      img = loadImage("j.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'k' || key == 'K') {
      lk = 1;
      img = loadImage("k.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'l' || key == 'L') {
      lk = 1;
      img = loadImage("l.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'm' || key == 'M') {
      lk = 1;
      img = loadImage("m.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'n' || key == 'N') {
      lk = 1;
      img = loadImage("n.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'o' || key == 'O') {
      lk = 1;
      img = loadImage("o.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'p' || key == 'P') {
      lk = 1;
      img = loadImage("p.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'q' || key == 'Q') {
      lk = 1;
      img = loadImage("q.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'r' || key == 'R') {
      lk = 1;
      img = loadImage("r.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 's' || key == 'S') {
      lk = 1;
      img = loadImage("s.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 't' || key == 'T') {
      lk = 1;
      img = loadImage("t.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'u' || key == 'U') {
      lk = 1;
      img = loadImage("u.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'v' || key == 'V') {
      lk = 1;
      img = loadImage("v.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      lk = 1;
      img = loadImage("w.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'x' || key == 'X') {
      lk = 1;
      img = loadImage("x.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'y' || key == 'Y') {
      lk = 1;
      img = loadImage("y.jpg");
      setup();
    }
  }
  if (keyPressed) {
    if (key == 'z' || key == 'Z') {
      lk = 1;
      img = loadImage("z.jpg");
      setup();
    }
  }
  
  int total = 10;
  int count = 0;
  int attempts = 0;
  
  while (count < total) {
    Circle newC = newCircle();
    if (newC != null) {
      circles.add(newC);
      count ++;
    }
    attempts++;
    if (attempts > 1000) {
      noLoop();
      println("DONE!");
      break;
    }
  }
  
  
  
  for (Circle c : circles) {
    if (c.growing) {
      if (c.edges()) {
        c.growing = false;
      } else {
        //boolean overlapping = false;
        for (Circle other : circles) {
          if (c != other) {
            float d = dist(c.x, c.y, other.x, other.y);
            if (d - 2 < c.r + other.r) {
              c.growing = false;
              break;
            }
          }
        }
      }
    }
    c.show();
    c.grow();
  }
}

Circle newCircle () {
  
  int r = int(random(0,locations.size()));
  PVector location = locations.get(r);
  
  float x = location.x;
  float y = location.y;
  
  
  boolean valid = true;
  for (Circle c : circles) {
    float d = dist (x,y,c.x,c.y);
    if (d < c.r) {
      valid = false;
      break;
    }
    
  }
  
  if (valid) {
    return new Circle(x, y);
  } else {
    return null;
  }
  
  
}
