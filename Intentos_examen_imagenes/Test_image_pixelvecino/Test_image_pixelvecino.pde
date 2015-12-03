PImage doge;

void setup() {
  size(512, 512);
  doge = loadImage("doge.jpg");
}

void draw() {
  //image(doge, 0, 0);
  loadPixels();
  doge.loadPixels();
  for (int x = 0; x < width-1; x++) {
    for (int y = 0; y < height; y++) {
      int loc1 = x     +y*width;
      int loc2 = (x+1) +y*width;
      float b1 = brightness(doge.pixels[loc1]);
      float b2 = brightness (doge.pixels[loc2]);
      
      float diff = abs(b1-b2);
      pixels[loc1] = color(diff);
    }
      
  }


  updatePixels();
  }