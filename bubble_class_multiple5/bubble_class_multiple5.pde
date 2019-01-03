//goes with video 8.4
//Code train

Bubble b1;
Bubble b2; 
Bubble b3;

//Bubble(size, fill, speed)
void setup() {
  size(640, 360);
  b1 = new Bubble(64, 125, 1.5);
  b2 = new Bubble(16, 100, 1.2);
  b3 = new Bubble(30, 80, 1);
}

void draw() {
  background(255);
  b1.display();
  b1.ascend();
  b1.top();

  b2.display();
  b2.ascend();
  b2.top();

  b3.display();
  b3.ascend();
  b3.top();
}
