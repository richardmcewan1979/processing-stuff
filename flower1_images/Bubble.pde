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
    y = 0+random(-15, -90);
    diameter = tempD;
    colour = tempColour; 
    speed = tempSpeed; 

  }


  void ascend() {
    y= y +(speed);
    x = x + random(-2, 2);
  }

  void display() {
    //stroke(0);
    //strokeWeight(2);
    //noFill();
    imageMode(CENTER);
    image(flower, x, y, diameter, diameter);
  }



  void top() {
    if (y > height) {
      y = 0+random(-75);
      x = random(width);
    }
  }
}
