PImage doge;
boolean mov;


void setup() {
 size(512, 512);
 doge = loadImage("doge.jpg");
 mov = false;
}

void draw() {
 //image(doge, 0, 0);
 loadPixels();
 doge.loadPixels();
 for (int x = 0; x < width; x++) {
   for (int y = 0; y < height; y++) {
     int loc = x+y*width;
     float b = brightness(doge.pixels[loc]);
     if (b*2 > mouseX){
      pixels[loc] = color(255);
     } else {
      pixels[loc] = color(150, 155, 250);
     }
      
     if (mov == true){
       b = map(b, 0, 255, -5, 5);
       x += b;
     }
        
      
      
     //float r = red(doge.pixels[loc]);
     //float g = green(doge.pixels[loc]);
     //float b = blue(doge.pixels[loc]);
     //float d = dist(mouseX, mouseY, x, y);
     //float factor = map(d, 0, 100, 2, 0);
     //pixels[loc] = color(r*factor, g*factor, b*factor);
   }
 }

 updatePixels();
}

void keyPressed(){
  if (key == ' '){
    mov = !mov;
  }
}