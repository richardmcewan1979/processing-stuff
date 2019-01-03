Bubble b;

//some major logical errors with 
//explosion and animation/looping


void setup() {
  size(640, 360);
  b = new Bubble();
}

void draw() {
  background(255);
  b.display(60, 60);
  b.ascend();
  b.top();
  b.colour();
}

void mousePressed() {
  b.pop();
  b.display(0,0);
}
