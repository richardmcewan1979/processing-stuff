import processing.serial.*;

Serial myPort;  // The serial port

void setup() {
  // List all the available serial ports:
  printArray(Serial.list());
  // Open the port you are using at the rate you want:
  myPort = new Serial(this, "/dev/tty.HC-06-DevB", 9600);
  
}

void draw() {
  myPort.write('H');
  while (myPort.available() > 0) {
    
    String inBuffer = myPort.readString();   
    if (inBuffer != null) {
      println(inBuffer);
    }
    
    
  }
  
  println(myPort.readString());
}
