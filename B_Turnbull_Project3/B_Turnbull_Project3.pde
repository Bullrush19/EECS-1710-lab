PImage typ;
PImage small; 
PImage[] allPoke;
float[] brightness;
PImage[] newImage;

int scale = 4;
int w, h;

void setup() {
  size(640,640);
  typ = loadImage("typhlosion.jpg");
  
  File[] files = listFiles(sketchPath("data/photos"));
  allPoke = new PImage[files.length-1];
  brightness = new float[allPoke.length];
  newImage = new PImage[256];
  
  for (int i = 0; i < allPoke.length; i++) {
    String filename = files[i+1].toString();
    allPoke[i] = loadImage(filename);
    allPoke[i].loadPixels();
    float avg = 0;
    for (int j = 0; j < allPoke[i].pixels.length; j++) {
      float b = brightness(allPoke[i].pixels[j]);
      avg += b;
    }
    avg /= allPoke[i].pixels.length;
    brightness[i] = avg;
  }
  //printArray(brightness);
  
  
  for (int i = 0; i < newImage.length; i++) {
    float record = 256;
    for (int j = 0; j < brightness.length; j++) {
    float dif = abs(i - brightness[j]);
    if ( dif < record) {
      record = dif;
      newImage[i] = allPoke[j];
    }
  }
    
    
  }
  
  
  w = typ.width/scale;
  h = typ.height/scale;
  small = createImage(w, h, RGB);
  small.copy(typ,0,0,typ.width,typ.height,0,0,w,h);
  
}

void draw() {
  background(0);
  small.loadPixels();
  for (int x = 0; x < w; x++) {
    for (int y = 0; y < h; y++) {
      int index = x + y * w;
      color c = small.pixels[index];
      int imageIndex = int(brightness(c));
      image(newImage[imageIndex], x*scale, y*scale,scale,scale);
    }
  }
  
  noLoop();
  
  
  
}
