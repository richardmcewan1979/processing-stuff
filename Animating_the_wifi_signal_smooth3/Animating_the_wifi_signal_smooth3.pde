import processing.serial.*;

int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // Serial port you are using
float num;

void setup() {
  size(800,800);
  String portName = "/dev/tty.HC-06-DevB";
  myPort = new Serial(this, portName, 9600);
  //myPort.clear();
  stroke(6);
  fill(255,0,0);
  for(int i=0; i<500; i+=50){
  rect(100+i, height/2, 50, 50);
  }
}

void draw() {
 
  //myPort.clear();
  draw_shape();
} 


void draw_shape(){
 
  port();
  num = num * 10;
  fill(0,0,255);
  rect(num, height/2, 50, 50);
  //variable we are using is called num

}


void port() {
  myPort.write('H');
  if (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if ((myString != null) && float(myString) !=0) {   
  num = float(myString);  // Converts and prints float
  println("String then num:" + myString + " " + num);
    
    }
  }
  //myPort.clear(); //maybe why the value drops
}
