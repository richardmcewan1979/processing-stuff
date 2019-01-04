class Bubble {

  float x;
  float y;
  float diameter; 
  int colour; 
  float speed; 
  
  //constructer
  Bubble(float tempD, color tempColour, float tempSpeed) {
    //data
    x = width/2;
    y = height;
    diameter = tempD;
    colour = tempColour; 
    speed = tempSpeed; 
  }


  void ascend() {
    y= y -(speed);
    x = x + random(-4, 4);
  }

  void display() {
    noStroke();
    fill(0, colour/2, colour, 70);
    ellipse(x, y, diameter, diameter);
  }



  void top() {
    if (y < diameter/1000) {
      y = height;
    }
  }
}
