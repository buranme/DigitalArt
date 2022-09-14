PImage img;

void setup() {
  size(512,512);
  img = loadImage("perlin.png");
  
  int x = (int)random(-1536,0);
  int y = (int)random(-1536,0);
  tint(255,255);
  image(img, x, y, 32768, 32768);
  
  x = (int)random(-1536,0);
  y = (int)random(-1536,0);
  tint(255,150);
  image(img, x, y, 8192, 8192);
  
  x = (int)random(-1536,0);
  y = (int)random(-1536,0);
  tint(255,100);
  image(img, x, y, 2048, 2048);
  //save(str(month()) + str(day()) + str(hour()) + str(minute()) + str(second()) + ".png");
  
}

void draw() {
}
