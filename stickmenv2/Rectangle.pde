
class Rectangle {

  //initialise all variables
  float x;
  float y; 
  float speed; 
  float diameter; 
  PImage img;

  //constructor
  Rectangle(PImage tempImg, float tempD, float tempSpeed) {
    //data

    x = 0; 
    y = random(height);
    diameter = tempD;
    speed = tempSpeed;
    img = tempImg;
  }

 void traverse() {
    x = x + speed;
  }

  void display() {
    imageMode(CENTER);
    image(img, x, y, diameter, diameter);
  }



  void check() {
    if (x > width) {
      x = 0+random(-75);
    }
    //final curly for the class
  }
} 
