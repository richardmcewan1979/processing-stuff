class Bubble {

  float x;
  float y;
  float diameter; 
  
  //constructer
  Bubble(float tempD) {
    //data
    x = width/2;
    y = height;
    diameter = tempD; 
  }


  void ascend() {
    y--;
    x = x + random(-2, 2);
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(x, y, diameter, diameter);
  }



  void top() {
    if (y < diameter/2) {
      y = diameter/2;
    }
  }
}
