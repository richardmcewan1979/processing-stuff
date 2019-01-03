class Bubble {

  float x;
  float y;
  float diameter; 
  int colour; 
  
  //constructer
  Bubble(float tempD, int tempColour) {
    //data
    x = width/2;
    y = height;
    diameter = tempD;
    colour = tempColour; 
  }


  void ascend() {
    y--;
    x = x + random(-2, 2);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(colour);
    ellipse(x, y, diameter, diameter);
  }



  void top() {
    if (y < diameter/2) {
      y = diameter/2;
    }
  }
}
