PImage back;
int bx = 0, bx2 = 1920;
PImage mid;
int mx = 0, mx2 = 1920;


void setup(){
 size(1920,1080);
 back = loadImage("background.png");
 back.resize(1923,1800);
 mid = loadImage("midground.png");
 mid.resize(1923,1800);
 
 //shark.resize(400,400);
}

void draw(){
  imageMode(CORNER);
  setBg();
  imageMode(CENTER);
 
}


void setBg() {
  image(back,bx,0); image(back,bx2,0);
  image(mid,mx,0); image(mid,mx2,0);
  
  bx--; bx2--;
  mx-=2; mx2-=2;
  
  if(bx<-1920){bx = 1920;} if(bx2<-1920){bx2 = 1920;}
  if(mx<-1920){mx = 1920;} if(mx2<-1920){mx2 = 1920;}
}
