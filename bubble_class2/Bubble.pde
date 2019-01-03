class Bubble {

  float x;
  float y;
  boolean bubbleoff; 

  Bubble() {
    //data
    x = width/2;
    y = height;
  }


  void ascend() {
    y--;
  }

  void display(float a, float b) {
    if (!bubbleoff) {
      stroke(4);
      strokeWeight(2);
      ellipse(x, y, a, b);
    }
  }



  void top() {
    if (y < -10) {
      x = width/2;
      y = -10;
    }
  }

  void colour() {
    fill(random(255), random(255), random(255));
  }


  void pop() {
      x++;
      y++;
      ellipse(x, y, x, y);
    

    bubbleoff = true;
  }



  //end curly
}
