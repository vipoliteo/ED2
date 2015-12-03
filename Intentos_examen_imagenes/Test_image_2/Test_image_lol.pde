PImage doge;
int pointillize = 15;

void setup() {
  size(512, 512);
  background(255);
  doge = loadImage("doge.jpg");
  
}

void draw() {
  int x = int(random(doge.width));
  int y = int(random(doge.height));
  int loc = x + y*doge.width;
  
  // Look up the RGB color in the source image
  loadPixels();
  float r = red(doge.pixels[loc]);
  float g = green(doge.pixels[loc]);
  float b = blue(doge.pixels[loc]);
  noStroke();
  
  // Draw an ellipse at that location with that color
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize);
    
  }


  