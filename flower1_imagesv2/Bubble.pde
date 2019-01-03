class Bubble {

  float x;
  float y;
  float diameter; 
  float speed; 
  PImage img;

  //constructer
  Bubble(PImage tempImg, float tempD, float tempSpeed) {
    //data
    x = random(width);
    y = 0+random(-15, -90);
    diameter = tempD;
    speed = tempSpeed;
    img = tempImg;
  }


  void ascend() {
    y= y +(speed);
  }

  void display() {
    //stroke(0);
    //strokeWeight(2);
    //noFill();
    imageMode(CENTER);
    image(img, x, y, diameter, diameter);
  }



  void top() {
    if (y > height) {
      y = 0+random(-75);
    }
  }
}
