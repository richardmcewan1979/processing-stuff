class Bubble {
  
  float x;
  float y;
  
  Bubble() {
    //data
    x = width/2;
    y = height;
  }


  void ascend() {
    y--;
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    ellipse(x, y, 60, 60);
  }



  void top() {
    if (y < -10) {
      x = width/2;
      y = -10;
    }
  }

  void colour() {
    fill(random(127));
  }
}
