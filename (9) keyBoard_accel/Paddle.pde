// Ball move
class Paddle
{ // memberdata
  float xLoc;
  float yLoc;
  float hue;
  float dim; // diameter
  float rad; // radius
  float grid; // move resolution

  //constructor
  Paddle(float d){
    hue = 150;
    xLoc = key;
    yLoc = height -20;
    dim = d;
    rad = dim / 2;
    grid = 7;
  }
  void move()
  {
    if (keyPressed) {
      if (key == 'a') xLoc -= grid;
      if (key == 's') xLoc += grid;
    }
  }
  void display()
  {
    stroke(hue, 255, 255);
    strokeWeight(5);
    line(xLoc-rad, yLoc, xLoc+rad, yLoc); 
  }
}
