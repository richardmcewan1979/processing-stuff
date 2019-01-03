import processing.serial.*;

int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // Serial port you are using
float num;

void setup() {
  String portName = "/dev/tty.HC-06-DevB";
  myPort = new Serial(this, portName, 9600);
  myPort.clear();
}

void draw() {
  myPort.write('H');
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {
  print(myString);  // Prints String
  num=float(myString);  // Converts and prints float
  println(num);
    }
  }
  myPort.clear(); //move this into the other bracket
  //maybe why goes back to zero.
  
  
  
} 
