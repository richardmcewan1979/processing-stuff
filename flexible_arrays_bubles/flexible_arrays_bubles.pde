//goes with video 8.4
//Code train

Bubble[] bubbles = new Bubble[100];

int total = 0; 

//Bubble(size, fill, speed)
void setup() {
  size(640, 360);  
    for(int i=0; i<bubbles.length; i++){
  bubbles[i] = new Bubble(random(60),0,random(0.5, 1.5));
  }

}

void mousePressed(){

  total = total + 1;
  println("The total is: " + total); 
}

void draw() {
  background(255);
  
  
    for(int i=0; i< total; i++){
    bubbles[i].display();
  bubbles[i].ascend();
  bubbles[i].top();
  }

}
