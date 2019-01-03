float x = 50;
boolean going = false;

void setup(){
  size(400,300);
}


void draw(){
  background(0);
  fill(255);
  ellipse(x, 150, 24, 24);
  
  if (going) {
  x = x + 2;
  }
}
  
  
  void mousePressed(){
  going = !going;
  }
  
  
//alternative logic
  /*
  void mousePressed(){
   if (going){
   going = false;
   } else { 
   going = true;}
  }
  
*/
