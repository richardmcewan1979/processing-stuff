//logic on collisions not quite working
//includes arrays
//includes classes
//includes some collision logic

Ball[] balls = new Ball[3];



void setup() {
  size(520, 340);
  balls[0] = new Ball(50, 50, 25);
  balls[1] = new Ball(300, 50, 125);
  balls[2] = new Ball(50, 250, 180);
}


void draw() {
  background(255);
  
  balls[0].overlaps(balls[1]);
  balls[1].overlaps(balls[2]);
  balls[2].overlaps(balls[0]);
 
  
  balls[0].update();
  balls[0].checkEdges();
  balls[0].display();

  balls[1].update();
  balls[1].checkEdges();
  balls[1].display();

  balls[2].update();
  balls[2].checkEdges();
  balls[2].display();
}
