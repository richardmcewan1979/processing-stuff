//Now the processing sketch


/**
 * Simple Read
 * 
 * Read data from the serial port and change the color of a rectangle
 * when a switch connected to a Wiring or Arduino board is pressed and released.
 * This example works with the Wiring / Arduino program that follows below.
 */


import processing.serial.*;

Serial myPort;  // Create object from Serial class
String val;      // Data received from the serial port


void setup() 
{
  size(200, 200);
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = "/dev/tty.HC-06-DevB";
  //portName="/dev/tty.HC-06-DevB";
  myPort = new Serial(this, portName, 9600);
  myPort.clear();
  myPort.bufferUntil('\n'); 
  //myPort.readString(); 
}

void draw(){
  myPort.write('H');
        // read it and store it in val
  
  println("value is: " + val);// Set background to white
  //val = map(val, 0, 100, 0, 255);
  //fill(val,0,0);
  //rect(50, 50, 100, 100);
  
  
}

void serialEvent(Serial myPort){

val = (myPort.readString());

}
