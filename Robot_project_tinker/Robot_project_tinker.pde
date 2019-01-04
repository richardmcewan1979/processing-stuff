//below is Arduino code and below that Java code

//this is the MASTER working wifi copy for now.

//it passes strings with some success. Some bugs e.g. 32 as 3, 2.


//This version includes distance sensing
//This verison should be what is uplaoded to the robot module.
//it's sending distance over wifi

#include "SoftwareSerial.h"
SoftwareSerial serial_connection(10, 9); //tx/rx
#define BUFFER_SIZE 64
char inData[BUFFER_SIZE];
char inChar=-1;
int count=0;
int i=0;
float distance;
String value; 
#define trigPin 11
#define echoPin 3

void setup() {
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  Serial.begin(9600);
  serial_connection.begin(9600);
  serial_connection.println("Ready!!!");
  Serial.println("Started");
  
}

void loop() {

//not sure where to nest this stuff...

  
  //This will prevent bufferoverrun errors
  byte byte_count=serial_connection.available();
 if(byte_count)
 {
  Serial.println("incoming Data");
  int first_bytes=byte_count;
  int remaining_bytes=0;
  if(first_bytes=BUFFER_SIZE-1)
  {
    remaining_bytes=byte_count-(BUFFER_SIZE-1);
  }
  for(i=0;i<first_bytes;i++)
  {
    inChar=serial_connection.read();
    inData[i]=inChar;
  }
  inData[i]='\0';
  for(i=0;i<remaining_bytes;i++)
  {
    inChar=serial_connection.read();
  }
  Serial.println(inData);
  long duration, distance;
//added
digitalWrite(trigPin, LOW);
delayMicroseconds(2);
digitalWrite(trigPin, HIGH);
delayMicroseconds(2);
duration = pulseIn(echoPin, HIGH);
distance = float((duration /2)/29.1);
if ((distance > 99)){
distance = 10;
}
delay(25);
//end added
  value = distance;
  serial_connection.println(value);
  Serial.println(value);
  count=count+1;
 }

 delay(100);

}


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
