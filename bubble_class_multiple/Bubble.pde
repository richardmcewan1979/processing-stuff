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
    fill(127);
    ellipse(x, y, 60, 60);
  }



  void top() {
    if (y < 30) {
      x = width/2;
      y = 30;
    }
  }

}
