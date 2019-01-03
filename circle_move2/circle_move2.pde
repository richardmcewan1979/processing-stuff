float circleX;
float circleY;
float circleSizeX;
float circleSizeY;
float circleRed;
float circleBlue;
float circleGreen;

void setup() {
  size(640, 360);
  circleX = width/2;
  circleY = height/2;
  background(50);
  circleSizeX = 30;
  circleSizeY = 30;
  circleRed = 255;
  circleBlue = 255;
  circleGreen = 255;
  println("hello world");
}

void draw() {
  //drawing stuff
  fill(circleRed, circleGreen, circleBlue);
  noStroke();
  ellipse(circleX, circleY, circleSizeX, circleSizeY);
  
  //logic
  circleX=random(width);
  circleY=random(height);
  circleSizeX = random(5,30);
  circleSizeY = random(5,circleSizeX);
  circleRed = random(0,255);
  circleGreen = random(0,255);
  circleBlue = random(0,255);
  println(circleX);
}
