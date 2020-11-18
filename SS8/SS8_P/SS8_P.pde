///////////////////////////////////////////////////////
/*
DEMO: SENDING DATA FROM PROCESSING TO ARDUINO OVER SERIAL.
Hover over text to send data to Serial.
Pair with Arduino demo sketch to control LEDs.
Note: Be sure to specify correct port number below!
 */
///////////////////////////////////////////////////////


import processing.serial.*;  //import Serial library

Serial myPort;  // create object from Serial class

void setup() {
  size(500, 500); 
  background (20, 0, 250);
  fill(200, 2, 0);rect(0,0,250,500);
  fill(20, 80, 20);rect(400,400,500,400);
  fill(20, 80, 20);rect(-400,400,500,400);
  fill(20, 80, 20);rect(400,-300,400,400);
  fill(20, 80, 20);rect(-400,-300,500,400);
  
  line(250,0,250,1500);
  fill(0);
  textSize (20);
  textAlign (CENTER, CENTER);

  //set up Serial communication
  printArray(Serial.list()); // prints port list to the console
  String portName = Serial.list()[0]; //change to match your port
  myPort = new Serial(this, portName, 9600); //initialize Serial communication at 9600 baud
}

void draw() {
  //text stuff
  fill(0);textSize (20);text ("Red light", width/4, height/3);
  fill(0);textSize (20);text ("Blue light", width-width/4, height/3);
  fill(20, 80, 20);rect(200,400,100,80);
  fill(0);textSize (20);text ("RESET", width/2, height-65);
  
  fill(0);textSize (14); text("Click and Hold", 450,50);
  fill(0);textSize (14); text("Click and Hold", 50,50);
  fill(0);textSize (14); text("Just click", 450,450);
  fill(0);textSize (14); text("Just click", 50,450);
//mouse location controls communication to Serial
  if (mouseY > width/2 && mouseY < height) {  
    myPort.write(0); //send a 0
    println ("0");
      
  fill(20, 80, 20);rect(400,400,500,400);
  fill(20, 80, 20);rect(-400,400,500,400);
  fill(20, 80, 20);rect(400,-300,400,400);
  fill(20, 80, 20);rect(-400,-300,500,400);
  fill(0);textSize (14); text("Click and Hold", 450,50);
  fill(0);textSize (14); text("Click and Hold", 50,50);
  fill(0);textSize (14); text("Just click", 450,450);
  fill(0);textSize (14); text("Just click", 50,450);
} else if (mouseX < width/2 && mouseX > 0) { //if mouse is on left side of screen
    myPort.write(1);  //write '1' to Serial port
    println("1"); //also print '1' to console
     
  fill(20, 80, 20);rect(400,400,500,400);
  fill(20, 80, 20);rect(-400,400,500,400);
  fill(20, 80, 20);rect(400,-300,400,400);
  fill(20, 80, 20);rect(-400,-300,500,400);
  fill(0);textSize (14); text("Click and Hold", 450,50);
  fill(0);textSize (14); text("Click and Hold", 50,50);
  fill(0);textSize (14); text("Just click", 450,450);
  fill(0);textSize (14); text("Just click", 50,450);
  } else if (mouseX > width/2 && mouseX < width) {
    myPort.write(2);  //write '2' to Serial port
    println ("2"); //print to '2' to console
      fill(20, 80, 20);rect(400,400,500,400);
  fill(20, 80, 20);rect(-400,400,500,400);
  fill(20, 80, 20);rect(400,-300,400,400);
  fill(20, 80, 20);rect(-400,-300,500,400);
  fill(0);textSize (14); text("Click and Hold", 450,50);
  fill(0);textSize (14); text("Click and Hold", 50,50);
  fill(0);textSize (14); text("Just click", 450,450);
  fill(0);textSize (14); text("Just click", 50,450);
} else {  //otherwise
    myPort.write(0); //send a 0
    println ("0");
  }
// if (mouseX > 570 && mouseY < 570)

if   (mouseX > 400 && mouseY > 400 && mousePressed) {
    myPort.write(3);  //write '3' to Serial port
    println ("3");
    fill(80, 180, 180);rect(400,400,500,400);
 
  
} 
else if   (mouseX > 400 && mouseY < 100 && mousePressed) {
    myPort.write(4);  //write '4' to Serial port
    println ("4");
  fill(20, 20, 20);rect(400,-300,400,400);
} 
else if   (mouseX < 100 && mouseY < 100 && mousePressed) {
    myPort.write(5);  //write '5' to Serial port
    println ("5");
  fill(80, 80, 80);rect(-400,-300,500,400);
  
  
  
} 
else if   (mouseX < 100 && mouseY > 400 && mousePressed) {
    myPort.write(6);  //write '6' to Serial port
    println ("6");
  fill(120, 80, 20);rect(-400,400,500,400);
  
  
}
 else if   (mouseX < 1 && mouseY > 1 && !mousePressed) {
    myPort.write(7);  //write '6' to Serial port
    println ("7");
    
} 
 else if   (mouseX > 200 && mouseY < 450 && mousePressed) {
    myPort.write(8);  //write '6' to Serial port
    println ("8");
 }
}
