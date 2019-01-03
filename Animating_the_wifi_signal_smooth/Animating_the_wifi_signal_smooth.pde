import processing.serial.*;

int lf = 10;    // Linefeed in ASCII
String myString = null;
Serial myPort;  // Serial port you are using
float num;
boolean firstContact = false; 
float[] values; 

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
  port();
  float noiseRed = noise_reduction(); 
  //change num variable name to fit function calls below
  rect(noiseRed*10, noiseRed*10, 100, 100); 
} 


float noise_reduction() {


  //return a values that get's used in draw or rectangle function that recieves.
  //append list with ten values and return the max

float [] values = new float[100];
for(int i=0; i < values.length; i++){
values[i] = num; 
}
  // Create an array of ints
float d = max(values);
return d;
}



void port() {
  myPort.write('H');
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {   
  num=float(myString);  // Converts and prints float
  //println("the myString value is: " + myString);
  //println(num); required to output the num
    }
    
  }
  myPort.clear(); //maybe why the value drops
}
