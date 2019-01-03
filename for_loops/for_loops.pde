
float spacing = 30;

void setup(){
  size(600,400);
}

void draw(){

  background(0);
  
  stroke(255);
  strokeWeight(2);
  
  //comparison of for loop and while loop
  
  for(float x = 0; x < width; x = x + spacing){
  line(x, 0, x, height);
  } //not order not as clear
  
 
  float y = 0;
  while (y < height) {
   line(0, y, width, y); 
   y = y + spacing; 
  }
}
