boolean top_left;
boolean bottom_left;
boolean top_right;
boolean bottom_right;

void setup() {
  size(640, 360);
  top_left = true;
  top_right = true;
  bottom_right = true;
  bottom_left = true;
}

void draw() {
  //draw
  background(0);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(width, height/2, 0, height/2);


  bottom_left = ((mouseX < width/2) && (mouseY > height/2));
  top_left =  ((mouseX < width/2) && (mouseY < height/2)); 
  top_right = ( (mouseX > width/2) && (mouseY < height/2)); 
  bottom_right = ( (mouseX > width/2) && (mouseY > height/2));

  //bottom left
   if (bottom_left){ 
    noStroke();
    fill(0, 255, 0);
    rect(0, height/2, width/2, height/2);
  }

  //top left
  else if (top_left) {
    noStroke();
    fill(0, 0, 255);
    rect(0, 0, width/2, height/2);
  }

  //top right
  else if ( top_right) {
    noStroke();
    fill(255, 255, 0);
    rect(width/2, 0, width/2, height/2);
  }

  //bottom right
  else if ( bottom_right) {
    noStroke();
    fill(255,0, 0);
    rect(width/2, height/2, width/2, height/2);
  }
}
