// Ball move
Ball b;  // Ball class object b
//Ball b2;
//Ball b3;
Paddle p;
int score;
boolean playOn;

void setup(){
  size(800, 600);  //size(width, height);
  print(width, height);
  background(200);
  colorMode(HSB); //Hue, Saturation, Brightness
  strokeWeight(5);
  b = new Ball(200,200,50);
  p = new Paddle(100);
  //b2 = new Ball(200,400,50);
  //b3 = new Ball(400,200,200);
  score = 0;
  playOn = true;
}
void draw(){ // 60times / sec
  background(200);
  playOn = b.move();
  if(b.move() == true){
    b.display(); 
    p.move();
    p.display();
    b.collide(p);
  } else {
    textSize(32);
    fill(10,200,200);
    text("Game over", width/2, height/2);
    if(score == 0) score = frameCount;
    text(score, width/2, height/2+100);
  }
}
