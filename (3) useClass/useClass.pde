float xLoc;
float yLoc;
float vx;
float vy;

void setup(){
  size(800, 600);  //size(width, height);
  print(width, height);
  background(200);
  colorMode(HSB); //Hue, Saturation, Brightness
  xLoc = 100;
  yLoc = 100;
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
  xLoc = xLoc + vx;
  yLoc = yLoc + vy;
}
void drawBall()
{
  fill(50, 255, 255);
  ellipse(xLoc, yLoc, 100, 100); 
  fill(150, 255, 255);
  ellipse(xLoc, yLoc, 100, 50);
}
