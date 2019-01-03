Particle p1;//3 args
//This is not the object orientated way
//objects not talking to eachother
//see classes_collisions_green_screen2

Particle p2; //3 args
Particle p3; //no args
Particle p4; //2 args

void setup() {
  size(640, 350);
  p1 = new Particle(100, 100, 50);
  p2 = new Particle(500, 200, 100);
  p3 = new Particle();
  p4 = new Particle(60, 70);
}

void draw() {
  //draw
  background(0);

  //logic
  float d = dist(p1.x, p1.y, p2.x, p2.y);
  if (d < p1.r + p2.r) {
    background(0, 255, 0);
  }

  p2.x = mouseX;
  p2.y = mouseY;

  p1.display();
  p2.display();
  p3.display();
  p4.display2();
}
