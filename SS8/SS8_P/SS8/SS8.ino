byte val;
const int LED2 = 2; 
const int LED3 = 3; 
const int LED4 = 4;
const int LED5 = 5;
const int LED6 = 6;
const int LED7 = 7;
void setup() {
  pinMode(LED2, OUTPUT); 
  pinMode(LED3, OUTPUT); 
  pinMode(LED4, OUTPUT);
  pinMode(LED5, OUTPUT);
  pinMode(LED6, OUTPUT);
  pinMode(LED7, OUTPUT);
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  if (Serial.available()) { 
    val = Serial.read(); 
  }
  if (val == 0) { // If 0 received
    //digitalWrite(LED1, LOW); // turn LEDs off
    digitalWrite(LED2, LOW);
    
  }
  else if (val == 1) { // If 1 received
    
    //digitalWrite(LED1, HIGH); // turn the LED at pin 1 on
    digitalWrite(LED2, LOW); // other LED off
    digitalWrite(LED3, LOW); // turn the LED at pin 2 on
    
  }
  else if (val == 2) { // If 2 received
    digitalWrite(LED2, HIGH); // turn the LED at pin 2 on
    //digitalWrite(LED1, LOW); //other LED off
    digitalWrite(LED3, LOW); // turn the LED at pin 2 on
    
  }
  else if (val == 3) { // If 3 received
    //digitalWrite(LED3, HIGH); // turn the LED at pin 2 on
       digitalWrite(LED3, HIGH);   // sends voltage to pin
       delay(1000);               // delays 1000 milliseconds (1 second)
       digitalWrite(LED3, LOW);    // stops sending voltage to pin
       delay(1000); 
    
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    //digitalWrite(LED1, LOW); //other
  }
  else if (val == 4) { // If 4 received
    digitalWrite(LED3, HIGH); // turn the LED at pin 2 on
    digitalWrite(LED2, LOW); // turn the LED at pin 2 on
    //digitalWrite(LED1, LOW); //other
    delay(10); // Wait 10 milliseconds
  }


}
