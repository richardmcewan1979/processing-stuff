class Particle {

  float x, y;
  float r;
  float q, t;
  color col;

  //3 args
  Particle(float tempX, float tempY, float tempR) {
    x = tempX;
    y = tempY;
    r = tempR;
    col = color(2);
  }

  //no args
  Particle() {
    x = random(width);
    y = random(height);
    r = random(20, 40);
  }

  //two args
  Particle(float tempT, float tempQ) {
    x = random(width);
    y = random(height);
    t = tempT;
    q = tempQ;
  }

  void display() {
    stroke(255);
    fill(col);
    ellipse(x, y, r*2, r*2);
  }

  //this is the essential addition
  void overlaps(Particle other) {
    float d = dist(x, y, other.x, other.y);
    if (d < r + other.r) {
      col = color(0,255,0,100);
      other.col = color(255,0,0, 100);
    } else {
      other.col = color(0,100);
      col = color(0,100); 
    }
  }

  void display2() {
    stroke(255);
    strokeWeight(4);
    noFill();
    ellipse(x, y, q, t);
  }
}
