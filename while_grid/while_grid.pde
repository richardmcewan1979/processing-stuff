float x;
float y;
float spacing = 50;

void setup(){
  size(600,400);
}


void draw(){

  
  //daft effect...
  //spacing = spacing + random(-2,2);
  
  
  
  background(0);
  
  stroke(255);
  strokeWeight(2);
  
  x = 0;
  while (x < width) {
   line(x, 0, x, height); 
   x = x + spacing; 
  }

  y = 0;
  while (y < height) {
   line(0, y, width, y); 
   y = y + spacing; 
  }
}
