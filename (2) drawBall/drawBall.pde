float xLoc;
float yLoc;

void setup(){
  size(800, 600);  //size(width, height);
  print(width, height);
  background(200);
  colorMode(HSB); //Hue, Saturation, Brightness
  
  strokeWeight(5);
  
  fill(50, 255, 255);
  ellipse(width/2, height/2, 100, 100); //x-condinate first point, y-condinate first point, width, height 
  fill(150, 255, 255);
  ellipse(width/2, height/2, 100, 50);
  
  strokeWeight(5);
  fill(50, 255, 255);
  ellipse(width/4, height/4, 100, 100);
  fill(150, 255, 255);
  ellipse(width/4, height/4, 100, 50);
  
  strokeWeight(5);
  fill(50, 255, 255);
  ellipse(width/2+100, height/2+100, 100, 100); 
  fill(150, 255, 255);
  ellipse(width/2+100, height/2+100, 100, 50);
}

void moveBall(float x, float y)
{
  xLoc = x;
  yLoc = y;
}
void drawBall()
{
  fill(50, 255, 255);
  ellipse(xLoc, yLoc, 100, 100); 
  fill(150, 255, 255);
  ellipse(xLoc, yLoc, 100, 50);
}
