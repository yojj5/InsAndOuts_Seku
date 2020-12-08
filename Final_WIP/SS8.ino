//Receives data over Serial port from Processing to control 2 LEDS
//Hook up LEDs to pins 4 and 8;


byte val; // stores data received from serial port
const int LED1 = 4; // variable for which pin
const int LED2 = 8; // variable for which pin
const int LED3 = 7;

void setup() {
  pinMode(LED1, OUTPUT); // set pin as output
  pinMode(LED2, OUTPUT); // set pin as output
  pinMode(LED3, OUTPUT); // set pin as output
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  if (Serial.available()) { // If data is available to read
    val = Serial.read(); // read it and store it in val
  }
  if (val == 0) { // If 0 received
    digitalWrite(LED1, LOW); // turn LEDs off
    digitalWrite(LED2, LOW);
    
  }
  else if (val == 1) { // If 1 received
    
    digitalWrite(LED1, HIGH); // turn the LED at pin 1 on
    digitalWrite(LED2, LOW); // other LED off
    digitalWrite(LED3, LOW); // turn the LED at pin 2 on
    
  }
  else if (val == 2) { // If 2 received
    digitalWrite(LED2, HIGH); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other LED off
    digitalWrite(LED3, LOW); // turn the LED at pin 2 on
    
  }
  else if (val == 3) { // If 3 received
    //digitalWrite(LED3, HIGH); // turn the LED at pin 2 on
       digitalWrite(LED3, HIGH);   // sends voltage to pin
       delay(1000);               // delays 1000 milliseconds (1 second)
       digitalWrite(LED3, LOW);    // stops sending voltage to pin
       delay(1000); 
    
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other
  }
  else if (val == 4) { // If 4 received
    digitalWrite(LED3, HIGH); // turn the LED at pin 2 on
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other
  delay(10); // Wait 10 milliseconds
  }
 else if (val == 5) { // If 5 received
    digitalWrite(LED3, HIGH); // turn the LED at pin 2 on
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other
  delay(10); // Wait 10 milliseconds
  }
   else if (val == 6) { // If 5 received
    digitalWrite(LED3, HIGH); // turn the LED at pin 2 on
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other
  delay(10); // Wait 10 milliseconds 
}
   else if (val == 7) { // If 7 received
    digitalWrite(LED3, LOW); // turn the LED at pin 2 on
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other
  delay(10); // Wait 10 milliseconds 
   }
 else if (val == 8) { // If 7 received
    digitalWrite(LED3, LOW); // turn the LED at pin 2 on
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    digitalWrite(LED1, LOW); //other
  delay(10); // Wait 10 milliseconds 
   }

}
