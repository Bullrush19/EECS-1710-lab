PImage back;
int bx = 0, bx2 = 1920;
PImage mid;
int mx = 0, mx2 = 1920;
PImage fish;
int fx, fy, g, Vfy, dy, dx;
PImage shark;
int sx = width+1920, sy = (int)random(150, 930);


void setup(){
 size(1920,1080);
 back = loadImage("background.png");
 back.resize(1923,1800);
 mid = loadImage("midground.png");
 mid.resize(1923,1800);
 fish = loadImage("fish right.png");
 fish.resize(200,125);
 fx = 300;
 fy = 200;
 dx = 0;
 dy = 0;
 g = 1; // gravity
 shark = loadImage("happyshark.png");
}

void draw(){
  imageMode(CORNER);
  setBg();
  imageMode(CENTER);
  fish();
  shark();
  
}

void fish() {
  image(fish,fx,fy);
  fy = fy + dy;
  move();
}
  
void shark() {
  image(shark,sx,sy);
  sx-=20;
  
  if(sx < 1040){
    shark = loadImage("shark.png");
  }
  if(sx<-500){sx = 2220; sy = (int)random(150, 930);
    shark = loadImage("happyshark.png");
  }
}

void setBg() {
  image(back,bx,0); image(back,bx2,0);
  image(mid,mx,0); image(mid,mx2,0);
  
  bx--; bx2--;
  mx-=2; mx2-=2;
  
  if(bx<-1920){bx = 1920;} if(bx2<-1920){bx2 = 1920;}
  if(mx<-1920){mx = 1920;} if(mx2<-1920){mx2 = 1920;}
}

void move() {
  if(sy < 540){
    fish = loadImage("scared fish.png");
    fish.resize(200,125);
    dy=10;
    if(fy == 900){
      dy = 0;
      fish = loadImage("fish right.png");
      fish.resize(200,125);
    }
  }
  if(sy > 540){
    fish = loadImage("scared fish.png");
    fish.resize(200,125);
    dy=-10;
    if(fy == 200){
      dy = 0;
      fish = loadImage("fish right.png");
      fish.resize(200,125);
    }
  }
}
  
