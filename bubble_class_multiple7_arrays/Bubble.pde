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
    y = random(height-5, height-20);
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
    fill(colour, colour/2, colour/3, colour/4);
    ellipse(x, y, diameter, diameter);
  }



  void top() {
    if (y < diameter/2) {
      y = height;
    }
  }
}
