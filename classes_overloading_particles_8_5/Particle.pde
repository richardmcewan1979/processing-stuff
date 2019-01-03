class Particle {

  float x, y;
  float r;

  Particle(float tempX, float tempY, float tempR) {
    x = tempX;
    y = tempY;
    r = tempR;
  }
  
  Particle() {
    x = random(width);
    y = random(height);
    r = random(20, 40); 
  }

  void display() {
    stroke(255);
    noFill();
    ellipse(x, y, r*2, r*2);
  }
}
