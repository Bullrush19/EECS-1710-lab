import processing.sound.*;

PImage octo;
PImage underwater;
int mx, my;

SoundFile Do1Sfx, reSfx, miSfx, faSfx, soSfx, laSfx, tiSfx, Do2Sfx;

Button Do1, re, mi, fa, so, la, ti, Do2;

void setup() {
  size(1531, 980);
  octo = loadImage("octo.png");
  underwater = loadImage("underwater.jpg");
  Do1Sfx = new SoundFile(this, "Do1.mp3");
  reSfx = new SoundFile(this, "re.mp3");
  miSfx = new SoundFile(this, "mi.mp3");
  faSfx = new SoundFile(this, "fa.mp3");
  soSfx = new SoundFile(this, "so.mp3");
  laSfx = new SoundFile(this, "la.mp3");
  tiSfx = new SoundFile(this, "ti.mp3");
  Do2Sfx = new SoundFile(this, "Do2.mp3");
  // create new button
  Do1 = new Button(271, 508, 48);
  re = new Button(326, 769, 48);
  mi = new Button(455, 903, 48);
  fa = new Button(821, 915, 48);
  so = new Button(1122, 841, 48);
  la = new Button(1261, 798, 48);
  ti = new Button(1287, 633, 48);
  Do2 = new Button(1396, 491, 48);
}

void draw() {
  background(255);
  imageMode(CENTER);
  setBg();
  image(octo,width/2,height/2);
  Do1.display(mouseX, mouseY);
  re.display(mouseX, mouseY);
  mi.display(mouseX, mouseY);
  fa.display(mouseX, mouseY);
  so.display(mouseX, mouseY);
  la.display(mouseX, mouseY);
  ti.display(mouseX, mouseY);
  Do2.display(mouseX, mouseY);
}

void mousePressed() { 
  if (Do1.contains(mouseX, mouseY)) {
    Do1Sfx.play();
  }
  if (re.contains(mouseX, mouseY)) {
    reSfx.play();
  }
  if (mi.contains(mouseX, mouseY)) {
    miSfx.play();
  }
  if (fa.contains(mouseX, mouseY)) {
    faSfx.play();
  }
  if (so.contains(mouseX, mouseY)) {
    soSfx.play();
  }
  if (la.contains(mouseX, mouseY)) {
    laSfx.play();
  }
  if (ti.contains(mouseX, mouseY)) {
    tiSfx.play();
  }
  if (Do2.contains(mouseX, mouseY)) {
    Do2Sfx.play();
  }
}

void setBg() {
  image(underwater,width/2,height/2);
}
