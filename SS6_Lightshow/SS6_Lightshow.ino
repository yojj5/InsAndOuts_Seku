 int LED=13; // put your setup code here, to run once:
 int LED1=12;
 int LED2=11;
 int LED3=10;

const int buttonPin = 2;      
int buttonState = 0;  

void setup() {

pinMode(13, OUTPUT);
pinMode(12, OUTPUT);
pinMode(11, OUTPUT);
pinMode(10, OUTPUT);
pinMode(buttonPin, INPUT);
}

void loop() {
  buttonState = digitalRead(buttonPin);
  delay (10);

 // for (int i = 0; i <=255; i +=5) {
  //analogWrite(11, i);
 // delay(50);
 // }
 //for (int i = 255; i >= 0; i -=5) {
 // analogWrite(10, i);
 // delay(50);
  
  
  if (buttonState == HIGH) { 
    //digitalWrite(LED, HIGH);    
  digitalWrite(13, HIGH);// put your main code here, to run repeatedly:
  delay(1000);
  digitalWrite(13, LOW);
  delay(1000);
  digitalWrite(12, HIGH);// put your main code here, to run repeatedly:
  delay(1000);
  digitalWrite(12, LOW);
  delay(1000);
  digitalWrite(11, HIGH);
  delay(1000);
  digitalWrite(11, LOW);
  delay(1000);
   digitalWrite(10, HIGH);
   delay(1000);
   digitalWrite(10, LOW);
   delay(1000);
      for (int i = 0; i <=255; i +=5) {
  analogWrite(11, i);
 delay(50);
  }
 for (int i = 255; i >= 0; i -=5) {
  analogWrite(10, i);
  delay(50);

 }
  } else {  
  digitalWrite(13, LOW);
  digitalWrite(12, LOW);
  digitalWrite(11, LOW);
  digitalWrite(10, LOW);
   
}

}
