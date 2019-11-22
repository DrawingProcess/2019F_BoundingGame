// Ball move
class Ball
{ // memberdata
  float xLoc;
  float yLoc;
  float vx;
  float vy;
  float hue1;
  float hue2;
  float dim; // diameter
  float rad; // radius

  //constructor
  Ball(float x, float y, float d){
    hue1 = 10;
    hue2 = 210;
    xLoc = x;
    yLoc = y;
    dim = d;
    rad = dim / 2;
    vx = 2;
    vy = -2;
  }
  void move()
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
  void display()
  {
    stroke(hue1, 255, 0);
    fill(hue1, 255, 255);
    ellipse(xLoc, yLoc, dim, dim);
    fill(hue2, 255, 255);
    ellipse(xLoc, yLoc, dim, rad);
  }
  // bottom center of a ball is on the paddle --> vy = -vy
  void collide(Paddle pp)
  {
    if(this.xLoc > pp.xLoc-pp.rad && this.xLoc < pp.xLoc+pp.rad && this.yLoc+this.rad > pp.yLoc)
    {
      vy = -vy;
    }
  }
}
