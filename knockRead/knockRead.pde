import processing.serial.*;

Serial myPort;
//available to you because you've imported processingserial.

int xPos = 1;
int readArduino;

void setup()
{
  size(600, 400);
  println(Serial.list());
  //all the possible virtual serial ports, choose number of one that goes w/port
  myPort = new Serial(this, Serial.list()[0], 9600);
  //9600 is rate of communication, must match arduino rate
  background(255);
}

void draw() {
  
   if (myPort.available() > 0) {
    readArduino = myPort.read();
    background(readArduino);
    println(readArduino);
   }
  
}



