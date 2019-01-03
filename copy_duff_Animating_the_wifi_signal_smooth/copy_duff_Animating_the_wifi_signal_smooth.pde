import processing.serial.*;

int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // Serial port you are using
float value;


void setup() {
  size(500,500);
  String portName = "/dev/tty.HC-06-DevB";
  myPort = new Serial(this, portName, 9600);
  myPort.clear();
}

void draw() {
  background(255);
  //myPort.clear();
  stroke(4);
  fill(255,0,0);
  
  println("this number comes out: " + value);
} 




void port() {
  myPort.write('H');
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {   
       value = float(myString); 
     }
  }
}
