int number = 100;
int total = 0;
int files = 40; 

PImage[] stick = new PImage[files];


Rectangle[] rectangles = new Rectangle[number];


void setup() {
  size(640, 360);
  for (int i=0; i < stick.length; i++) {
    stick[i] = loadImage("stick"+i+".png");
  }



  for (int i=0; i < stick.length; i++) {
    //Rectangle(image, y, speed)
    rectangles[i] = new Rectangle(stick[i], 50, random(1, 2));
  }
}


void mousePressed() {
  total = total +1; 
  println("The total stickmen are: " + total);

  if (total == files-10) {
    println("Warning: Only 10 stickmen left");
  }
}


void keyPressed() {
  total = total -1;
  ;
  println("The total stickmen are: " + total);
}


void draw() {
  background(255);

  for (int i=0; i < total; i++) {
    rectangles[i].display();
    rectangles[i].traverse();
    rectangles[i].check();
  }
}
