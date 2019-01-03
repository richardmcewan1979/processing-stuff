//goes with video 8.4
//Code train

int number = 30; 
int total = 0; 

Bubble[] bubbles = new Bubble[number];



//Bubble(size, fill, speed)
void setup() {
  size(640, 360);  
    for(int i=0; i<bubbles.length; i++){
  bubbles[i] = new Bubble(random(60),0,random(0.5, 1.5));
  }

}

void mousePressed(){

  total = total + 1;
  println("The total is: " + total); 
  if(total == number-10){
      
    println("Only 10 more bubbles allowed");
  
  }
}

void keyPressed(){
 total = total -1;
 println("The total is: " + total); 
}

void draw() {
  background(255);
  
  
    for(int i=0; i< total; i++){
    bubbles[i].display();
  bubbles[i].ascend();
  bubbles[i].top();
  }

}
