class Button {
  // location and size
  float x;
  float y;
  float r;
  
  Button(float x_, float y_, float r_) {
    x = x_;
    y = y_;
    r = r_;
  }
  boolean contains(float mx, float my) {
    if (dist(mx, my, x, y) < r) {
      return true;
    } else {
      return false;
    }
}

  void display(float mx, float my) {
    if (contains(mx, my)) {
      fill(255,0,0);
    } else {
      fill(255,192,203);
    }
    stroke(0);
    strokeWeight(4);
    ellipse(x, y, r, r);
  
}}
