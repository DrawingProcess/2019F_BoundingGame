// Ball move
class Paddle
{ // memberdata
  float xLoc;
  float yLoc;
  float hue;
  float dim; // diameter
  float rad; // radius

  //constructor
  Paddle(float d){
    hue = 150;
    xLoc = mouseX;
    yLoc = height -20;
    dim = d;
    rad = dim / 2;
  }
  void move()
  {
    xLoc = mouseX;
  }
  void display()
  {
    stroke(hue, 255, 255);
    strokeWeight(5);
    line(xLoc-rad, yLoc, xLoc+rad, yLoc); 
  }
}
