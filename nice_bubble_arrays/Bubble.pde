class Bubble {

  float x;
  float y;
  float diameter; 
  float colour; 
  float speed; 

  //constructer
  Bubble(float tempD, float tempColour, float tempSpeed) {
    //data
    x = random(width);
    y = height+random(150);
    diameter = tempD;
    colour = tempColour; 
    speed = tempSpeed; 

  }


  void ascend() {
    y= y -(speed);
    x = x + random(-2, 2);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    noFill();
    ellipse(x, y, diameter, diameter);
  }



  void top() {
    if (y < diameter/2) {
      y = height;
    }
  }
}
