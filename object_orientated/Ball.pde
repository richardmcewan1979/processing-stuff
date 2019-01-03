class Ball {

  float x;
  float y;
  color col;
  float directionX = 1; 
  float directionY = 1; 
  float r=64;

  Ball(float tempX, float tempY, color tempCol) {

    x = tempX;
    y = tempY;
    col = tempCol;
  }

  void   display() {
    stroke(0);
    fill(col);
    ellipse(x, y, r, r);
  }


  void update() {
    //logic
    x = x + directionX;
    y = y + directionY;
  }



  void checkEdges() {


    if (x > width-12) {
      directionX = random(-8, -4);
    }

    if (y > height-12) {
      directionY = random(-7, -3);
    }


    if (x< 10) {
      directionX = random(6, 10);
    }

    if (y < 10) {
      directionY = random(4, 10);
    }
  }


  //this is the essential addition
  void overlaps(Ball other) {
    float d = dist(x, y, other.x, other.y);
    if (d < r/2 + other.r/2) {
      col = color(0,255,0,100);
      other.col = color(255,0,0, 100);
    } else {
      col = color(0,100);
      other.col = color(0,100); 
    }
  }
  //final curly
}
