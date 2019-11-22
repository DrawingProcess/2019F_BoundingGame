// Ball move
Ball b;  // Ball class object b
//Ball b2;
//Ball b3;
Paddle p;

void setup(){
  size(800, 600);  //size(width, height);
  print(width, height);
  background(200);
  colorMode(HSB); //Hue, Saturation, Brightness
  strokeWeight(5);
  b = new Ball(200,200,100);
  p = new Paddle(200);
  //b2 = new Ball(200,400,50);
  //b3 = new Ball(400,200,200);
}
void draw(){ // 60times / sec
  background(200);
  b.move();
  b.display();
  //b2.move();
  //b2.drawBall();
  //b3.move();
  //b3.drawBall();  
  p.move();
  p.display();
}
