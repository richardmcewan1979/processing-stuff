//goes with video 8.4
//Code train


//int[] nums = new int[10]; 

//type bubble
//array
//name bubbles
//two bubbles in it
//note the class 'Bubble' has two elements


Bubble[] bubbles = new Bubble[2];





//Bubble(size, fill, speed)
void setup() {
  size(640, 360);
  bubbles[0] = new Bubble(64, 125, 0.5);
  bubbles[1] = new Bubble(25, 40, 0.25);
}

void draw() {
  background(255);
  bubbles[0].display();
  bubbles[0].ascend();
  bubbles[0].top();

  bubbles[1].display();
  bubbles[1].ascend();
  bubbles[1].top();
}
