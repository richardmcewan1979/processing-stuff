//goes with video 8.4
//Code train

Bubble b1;
Bubble b2; 

void setup(){
  size(640, 360);
  b1 = new Bubble(64);
  b2 = new Bubble(16);
}

void draw(){
  background(255);
  b1.display();
  b1.ascend();
  b1.top();
  
  b2.display();
  b2.ascend();
  b2.top();
}
