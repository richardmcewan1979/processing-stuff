import processing.serial.*;

int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // Serial port you are using
float num;

void setup() {
  size(500,500);
  String portName = "/dev/tty.HC-06-DevB";
  myPort = new Serial(this, portName, 9600);
  //myPort.clear();
}

void draw() {
  background(255);
  //myPort.clear();
  stroke(4);
  fill(255,0,0);
  port();
  //change num variable name to fit function calls below
  rect(num*5+50, num*5+50, 100, 100); 
} 




void port() {
  myPort.write('H');
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if ((myString != null) && float(myString) !=0) {   
  num = float(myString);  // Converts and prints float
  println("String then num:" + myString + " " + num);
    
    }
  }
  //myPort.clear(); //maybe why the value drops
}
