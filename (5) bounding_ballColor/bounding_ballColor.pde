float xLoc;
float yLoc;
float vx;
float vy;
float hue1;
float hue2;
float dim; // diameter
float rad; // radius

void setup(){
  size(800, 600);  //size(width, height);
  print(width, height);
  background(200);
  colorMode(HSB); //Hue, Saturation, Brightness
  hue1 = 10;
  hue2 = 210;
  xLoc = 100;
  yLoc = 100;
  dim = 100;
  rad = dim / 2;
  vx = 1;
  vy = 1;
  strokeWeight(5);
}
void draw(){ // 60times / sec
  background(200);
  moveBall(random(width), random(height));
  drawBall();
}
void moveBall(float x, float y)
{
  if(xLoc-rad < 0){ //left wall collision
    vx = -vx;
  } 
  else if(xLoc+rad > width){ //right wall collision
    vx = -vx;
  }
  else if(yLoc-rad < 0){ //ceiling collision
    vy = -vy;
  }
  // bottom collision not exist(gameover)
  xLoc = xLoc + vx;
  yLoc = yLoc + vy;
  hue1 = random(0, 100);
  hue2 = random(200, 255);
}
void drawBall()
{
  fill(hue1, 255, 255);
  ellipse(xLoc, yLoc, dim, dim); 
  fill(hue2, 255, 255);
  ellipse(xLoc, yLoc, dim, dim);
}
