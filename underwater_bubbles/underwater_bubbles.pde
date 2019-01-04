//goes with video 8.4
//Code train


//int[] nums = new int[10]; 

//type bubble
//array
//name bubbles
//two bubbles in it
//note the class 'Bubble' has two elements

int nums = 30; 

Bubble[] bubbles = new Bubble[nums];





//Bubble(size, fill, speed)
void setup() {
  fullScreen();

  for (int i=0; i < nums; i++) {
    bubbles[i] = new Bubble(3*i, 3*i, i*0.2);
  }
}

void draw() {
  background(0, 125, 125);

  for (int i=0; i < nums; i++) {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
}
