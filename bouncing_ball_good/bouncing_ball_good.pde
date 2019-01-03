float circleX;
float circleY;
float directionX;
float directionY;
float colour0;
float colour1;
float colour2;
float randomSize;


void setup() {
  noCursor();
  fullScreen();
  circleX = random(0, width);
  circleY = random(0, height);
  directionX = random(0, 5);
  directionY = random(0, 5);
  colour0 = random(0, 255);
  colour1 = random(0, 255);
  colour2 = random(0, 255);
  randomSize = 24;
  background(100);
  //noStroke();
}

void draw() {
  
  //draw
  //background(50);
  fill(colour0, colour1, colour2);
  ellipse(circleX, circleY, randomSize, randomSize);

  //logic
  circleX = circleX + directionX;
  circleY = circleY + directionY;

  if (circleX > width-12) {
    directionX = random(-12, -4);
    colour0 = random(0, 255);
    randomSize = random(20, 70);
  }

  if (circleY > height-12) {
    directionY = random(-13, -5);
    colour1 = random(0, 255);
    randomSize = random(20, 70);
  }


  if (circleX < 10) {
    directionX = random(6, 25);
    colour2 = random(0, 255);
    randomSize = random(20, 40);
  }

  if (circleY < 10) {
    directionY = random(8, 15);
    colour0 = random(0, 255);
    randomSize = random(20, 70);
  }
}
