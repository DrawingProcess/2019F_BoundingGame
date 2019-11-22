void setup(){
  size(800, 600);  //size(width, height);  
  background(200);
  line(100,50,400,590); //x-condinate first point, y-condinate first point, x-condinate second point, y-condinate second point
  colorNode(HSB); //Hue, Saturation, Brightness
  fill(255, 0, 0);
  ellipse(400, 300, 100, 50); //x-condinate first point, y-condinate first point, width, height 
  stroke(0, 255, 0);
  strokeWeight(10);
  line(400, 275, 400, 325);
  stroke(255, 255, 0);
  line(350, 300, 450, 300);
}
