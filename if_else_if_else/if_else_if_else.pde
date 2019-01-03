void setup() {
  size(640, 360);
}

void draw() {
  //draw
  background(0);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(width, height/2, 0, height/2);

  //logic

  //left bottom
  if ( (mouseX < width/2) && (mouseY > height/2)) {
    noStroke();
    fill(0, 255, 0);
    rect(0, height/2, width/2, height/2);
  }

  //left top
  else if ( (mouseX < width/2) && (mouseY < height/2)) {
    noStroke();
    fill(0, 0, 255);
    rect(0, 0, width/2, height/2);
  }

  //right top
  else if ( (mouseX > width/2) && (mouseY < height/2)) {
    noStroke();
    fill(255, 255, 0);
    rect(width/2, 0, width/2, height/2);
  }

  //right bottom
  else if ( (mouseX > width/2) && (mouseY > height/2)) {
    noStroke();
    fill(255,0, 0);
    rect(width/2, height/2, width/2, height/2);
  }
}
