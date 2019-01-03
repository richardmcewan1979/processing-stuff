//goes with video 8.4
//Code train

int number = 100; 
int total = 0; 

PImage[] flowers = new PImage[3];

Bubble[] bubbles = new Bubble[number];



//Bubble(size, fill, speed)
void setup() {
  size(640, 360);

  for (int i =0; i < flowers.length; i++) {
    flowers[i] = loadImage("flowers"+i+".png");
  }

  for (int i=0; i<bubbles.length; i++) {
    int index = int(random(0, flowers.length)); 
    bubbles[i] = new Bubble(flowers[index], random(35, 90), random(0.5, 2));
  }
}

void mousePressed() {

  total = total + 1;
  println("The total is: " + total); 
  if (total == number-10) {

    println("Only 10 more bubbles allowed");
  }
}

void keyPressed() {
  total = total -1;
  println("The total is: " + total);
}

void draw() {
  background(255);


  for (int i=0; i< total; i++) {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
}
