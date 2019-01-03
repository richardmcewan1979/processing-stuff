class Bubble {

  float x;
  float y;
  float diameter; 
  int colour; 
  float speed; 
  
  //constructer
  Bubble(float tempD, int tempColour, float tempSpeed) {
    //data
    x = width/2;
    y = height;
    diameter = tempD;
    colour = tempColour; 
    speed = tempSpeed; 
  }


  void ascend() {
    y= y -(speed);
    x = x + random(-3, 3);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(colour);
    ellipse(x, y, diameter, diameter);
  }



  void top() {
    if (y < diameter/2) {
      y = height;
    }
  }
}
