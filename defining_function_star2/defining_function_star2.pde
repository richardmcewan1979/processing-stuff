void setup() {
  size(640, 360);
  background(51);
}


void draw() {
  display();
}

void display() {
  if (mousePressed) {
    star(mouseX, mouseY);
  }
}


void star(float x, float y) {
  fill(127);
  stroke(255);
  strokeWeight(2);
  //hardcoding a series of vertices
  beginShape();
  vertex(x, y-50);
  vertex(x+14, y-20);
  vertex(x+47, y-15);
  vertex(x+23, y+7);
  vertex(x+29, y+40);
  vertex(x, y+25);
  vertex(x-29, y+40);
  vertex(x-23, y+7);
  vertex(x-47, y-15);
  vertex(x-14, y-20);
  endShape(CLOSE);
}
