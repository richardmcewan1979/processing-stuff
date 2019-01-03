Bubble b;

void setup(){
  size(640, 360);
  b = new Bubble();
}

void draw(){
  background(255);
  b.display();
  b.ascend();
  b.top();
  b.colour();
}
