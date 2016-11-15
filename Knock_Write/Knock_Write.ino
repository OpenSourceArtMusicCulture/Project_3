

// these constants won't change:
const int knockSensor = A0; // the power pin from the piezo (center) is connected to analog pin 0, other goes to ground



// these variables will change:
int sensorReading = 0;      // variable to store the value read from the sensor pin
int sensorMap;


void setup() {
  Serial.begin(9600);       // use the serial port
}

void loop() {
  // read the sensor and store it in the variable sensorReading:
  sensorReading = analogRead(knockSensor);    
  sensorMap = map(sensorReading, 0, 1023, 0, 255); //scale the values
  Serial.write(sensorMap);
  delay(100);

  // *** debug ***
  // Serial.println(sensorReading);
  // <-- print to the serial if you're not sure if it's working. Comment out the Serial.write
}





