int numFrames = 8;  // The number of frames in the animation
int currentFrame = 0;
PImage[] img = new PImage[numFrames];
PImage img2;
float y,vy,Fy,x,z,vx;

void setup() {
  frameRate(24);
  size(600, 600);
  y = 0;
  vy = 0;
  Fy = 0;
  x = 570;
  z = 570;
  vx = 5;
  // The image file must be in the data folder of the current sketch 
  // to load successfully
  img2 = loadImage("kouno-tarou.jpg");
  img[0] = loadImage("stick0.png");  // Load the image into the program  
  img[1] = loadImage("stick1.png");
  img[2] = loadImage("stick2.png");
  img[3] = loadImage("stick3.png");
  img[4] = loadImage("stick4.png");
  img[5] = loadImage("stick5.png");
  img[6] = loadImage("stick6.png");
  img[7] = loadImage("stick7.png");
}

void draw() {
  background(255);
  
  vy = vy +Fy;
  
  y = y + vy;
  
  x = x - vx;
  
  if(y > 0){
  vy = 0;
  Fy = 0;
  y = 0;
  }
  
  if(x < 0){
    x = 570;
  }
  currentFrame = (currentFrame+1) % numFrames;
  image(img[currentFrame], 0, 450 + y);
  
  fill(0);
  rect(x,z,30,30);
  
  if ( ((0<x) && (x<100)) && (600+y > 570)){
  fill(253);
  rect(0,0,600,600);
  image(img2,0,0);
  noLoop();
  }
}

void mouseClicked(){
  Fy =1.2;
  vy = -20;
}
