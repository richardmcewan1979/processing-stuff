PImage flower;

//goes with video 8.4
//Code train

int number = 150; 
int total = 0; 

Bubble[] bubbles = new Bubble[number];



//Bubble(size, fill, speed)
void setup() {
  fullScreen();
  flower = loadImage("flower.png");
    for(int i=0; i<bubbles.length; i++){
  bubbles[i] = new Bubble(random(35,90),0,random(0.5, 2));
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
  background(204);
  
  
    for(int i=0; i< total; i++){
    bubbles[i].display();
  bubbles[i].ascend();
  bubbles[i].top();
  }

}
