
import ddf.minim.*;
Minim minim;

AudioPlayer player;
 
import processing.serial.*; 
Serial myPort; 
int val=0;


PImage img;


void setup(){
size(800, 800); 
printArray(Serial.list()); 
  String portName = Serial.list()[0];
  //myPort = new Serial(this, portName, 9600);

minim = new Minim(this);



}

void keyPressed(){

 if (key == 's') {
     player.pause(); 
 //reset button
noStroke();fill(71,74,87);rect(1, 515, 800, 10);
//noStroke();fill(71,74,87);rect(320, 660, 120, 40);
stroke(255);strokeWeight(10);noFill();rect(320, 660, 124, 44);

 }
}





void draw(){


noStroke();

background(0); 
img = loadImage("planets3.jpg");
image(img, 0,0, 800, 600 );
fill(0);rect(0,520,800,400);

fill(71,74,87);textSize(32);text("Welcome to EMO!", 40,100);
fill(71,74,87);textSize(22);text("The emotional regulator app", 40,140);
fill(71,74,87);textSize(22);text("Click on any planet to play a song and enjoy a light show.", 100,550);
//fill(71,74,87);textSize(22);text("Once the LED is on, press the pressure sensor on the planet to change", 0,580);
//fill(71,74,87);textSize(22);text("the music based on the planets emotion.", 0,610);


//reset button
noStroke();fill(71,74,87);rect(1, 515, 800, 10);
noStroke();fill(71,74,87);rect(320, 660, 120, 40);
//if (mouseX < 460 && mouseX > 310  && mouseY < 710 && mouseY > 650){
//stroke(255);strokeWeight(10);noFill();rect(320, 660, 124, 44);

//}
fill(0);textSize(20);text("Press 'S'", 345,680);
fill(0);textSize(15);text("(Stop music)", 335,695);
noStroke();
//noStroke();fill(71,74,87);rect(1, 5, 40, 40);
//noStroke();fill(71,74,87);rect(1, 5, 40, 40);

//the sun angry
fill(255, 169, 0);circle(85,290,149);
fill(255, 255, 0);circle(85,290,129);
fill(0);ellipse(80,270,20,25);
fill(0);ellipse(120,270,20,25);

fill(0);ellipse(105,300,15,15);
fill(255, 255, 0);ellipse(100,300,15,15);

fill(0);ellipse(100,330,25,25);
fill(255, 255, 0);ellipse(100,335,28,25);
strokeWeight(3);stroke(1);line(70,255,90,260);
strokeWeight(3);stroke(1);line(110,260,130,255);
stroke(255,0,0);strokeWeight(10);noFill();circle(85,290,149);

//the earth happy
noFill();stroke(60,105,250);strokeWeight(8);ellipse(355,280,99,99);
noStroke();


fill(0);ellipse(355,295,35,35);
fill(135,205,250);ellipse(355,289,38,35);
fill(0);ellipse(355,290,12,15);
fill(135,205,250);ellipse(355,286,14,15);
fill(0);ellipse(340,255,13,13);
fill(0);ellipse(370,255,13,13);
fill(135,205,250);ellipse(340,258,15,13);
fill(135,205,250);ellipse(370,258,15,13);

fill(0);ellipse(340,273,13,18);
fill(0);ellipse(370,273,13,18);


//uranus sad
fill(0);ellipse(690,405,5,10);
fill(0);ellipse(700,405,5,10);
fill(0,0,0);ellipse(695,422,15,15);
fill(65,95,255);ellipse(695,425,19,15);
fill(0);ellipse(695,412,2,2);

fill(0);ellipse(690,397,5,5);
fill(0);ellipse(700,397,5,5);
fill(65,95,255);ellipse(690,398,5,5);
fill(65,95,255);ellipse(700,398,5,5);

//jupiter
fill(0);ellipse(480,443,18,18);
fill(0);ellipse(450,443,18,18);
fill(169,169,169);ellipse(480,440,20,18);
fill(169,169,169);ellipse(450,440,20,18);
fill(0);ellipse(465,463,18,18);
fill(169,169,169);ellipse(465,460,20,18);
//fill(0);ellipse(465,483,25,25);
stroke(0);strokeWeight(3);line(450, 480,480, 480);
stroke(0);strokeWeight(3);line(445, 430,455, 430);
stroke(0);strokeWeight(3);line(475, 430,485, 430);
stroke(169,169,169);strokeWeight(8);noFill();ellipse(470,460,110,100);

noFill();stroke(135,205,250);strokeWeight(6);ellipse(700,410,54,53);

//Venus

noStroke();strokeWeight(0);fill(0);ellipse(250,430,15,12);
noStroke();strokeWeight(0);fill(0);ellipse(270,430,15,12);
stroke(0);strokeWeight(2);line(250,430,265,430);
noStroke();strokeWeight(0);fill(0);ellipse(265,443,8,8);
noStroke();strokeWeight(0);fill(205,133,63);ellipse(262,443,8,8);

stroke(0);strokeWeight(2);line(255,453,265,453);
stroke(0);strokeWeight(2);line(245,420,253,420);
stroke(0);strokeWeight(2);line(265,420,273,420);
stroke(139,69,19);strokeWeight(8);noFill();circle(250,435,68);

//stroke(0);strokeWeight(8);noFill();circle(250,435,78);


//Neptune
noStroke();strokeWeight(0);fill(0);circle(630,90,15);
noStroke();strokeWeight(0);fill(0);circle(655,90,15);



noStroke();strokeWeight(0);fill(35,144,255);ellipse(628,87,17,17);
noStroke();strokeWeight(0);fill(35,144,255);ellipse(657,87,17,17);
noStroke();strokeWeight(0);fill(0);circle(642,105,10);
noStroke();strokeWeight(0);fill(35,144,255);ellipse(642,103,13,10);
noStroke();strokeWeight(0);fill(0);circle(645,120,15);
noStroke();strokeWeight(0);fill(35,144,255);ellipse(645,121,17,13);


stroke(0);strokeWeight(2);line(623,82,633,80);
stroke(0);strokeWeight(2);line(653,80,663,82);
stroke(0,0,255);strokeWeight(8);noFill();circle(650,97,72);
//stroke(0);strokeWeight(8);noFill();circle(650,97,82);




//mercury
stroke(0);strokeWeight(2);line(190,203,195,203);
stroke(0);strokeWeight(2);line(200,203,205,203);
stroke(0);strokeWeight(2);line(193,215,199,215);
noStroke();strokeWeight(0);fill(0);circle(195,210,5);
noStroke();strokeWeight(0);fill(205,133,63);ellipse(197,210,6,5);
stroke(205,133,63);strokeWeight(4);noFill();ellipse(200,207,32,32);



//THE SUN MOUSEPRESSED
if (mouseX < 180 && mouseY < 370 && mouseY > 210){
stroke(0);strokeWeight(8);noFill();circle(85,290,166);
fill(255,0, 0);
textSize(32);text("ANGRY", 100,200);
if (mouseX < 180 && mouseY < 370 && mouseY > 200 && mousePressed){
player = minim.loadFile("Three Days Grace - Riot (Official Audio).mp3");
player.loop();
}
}
//EARTH MOUSEPRESSED
if (mouseX < 420 && mouseX > 300 && mouseY > 220 && mouseY < 340){
noFill();stroke(0);strokeWeight(8);ellipse(355,280,110,110);
fill(255, 255, 0);
textSize(32);text("HAPPY", 300,200);
if (mouseX < 420 && mouseX > 300 && mouseY > 220 && mouseY < 340 && mousePressed){
player = minim.loadFile("Bag Raiders - Shooting Stars (Lyrics).mp3");
player.loop();
}
}
//URANUS MOUSEPRESSED
if (mouseX < 730 && mouseX > 670 && mouseY > 380 && mouseY < 440){
noFill();stroke(0);strokeWeight(6);ellipse(700,410,65,65);
fill(0,0, 255);
textSize(32);text("SAD", 600,400);
if (mouseX < 730 && mouseX > 670 && mouseY > 380 && mouseY < 440 && mousePressed){
player = minim.loadFile("Naruto - Sadness and Sorrow (Odece Trap Remix).mp3");
player.loop();
}
}
//JUPITER MOUSEPRESSED
if (mouseX < 530 && mouseX > 400 && mouseY > 400 && mouseY < 520){
noFill();stroke(0);strokeWeight(8);ellipse(470,460,122,112);
fill(169,169, 169);
textSize(32);text("CALM", 500,400);
if (mouseX < 530 && mouseX > 400 && mouseY > 400 && mouseY < 520 && mousePressed){
player = minim.loadFile("Interstellar - Main Theme - Hans Zimmer.mp3");
player.loop(); }


}


//VENUS MOUSEPRESSED
if (mouseX < 300 && mouseX > 200 && mouseY > 380 && mouseY < 490){
stroke(0);strokeWeight(8);noFill();circle(250,435,78);
fill(205,165,78);
textSize(32);text("CONFIDENT", 200,380);
if (mouseX < 300 && mouseX > 200 && mouseY > 380 && mouseY < 490 && mousePressed){
player = minim.loadFile("Michael Jackson - Bad (Shortened Version).mp3");
player.loop(); }


}
//NEPTUNE MOUSE PRESSED
if (mouseX < 700 && mouseX > 600 && mouseY > 50 && mouseY < 140){
stroke(0);strokeWeight(8);noFill();circle(650,97,82);
fill(205,165,78);
textSize(22);text("DISAPPOINTED", 450,80);
if (mouseX < 700 && mouseX > 600 && mouseY > 50 && mouseY < 140 && mousePressed){
player = minim.loadFile("DaBaby ROCKSTAR FT RODDY RICH (Instrumental).mp3");
player.loop(); }

}


//MERCURY MOUSEPRESSED
if (mouseX < 220 && mouseX > 180 && mouseY > 180 && mouseY < 230){
stroke(0);strokeWeight(4);noFill();ellipse(200,207,38,38);
fill(205,165,78);
textSize(22);text("ANNOYED", 220,200);
if (mouseX < 220 && mouseX > 180 && mouseY > 180 && mouseY < 230 && mousePressed){
fill(255);ellipse(225,215,8,6);
fill(255);ellipse(230,230,15,10);
fill(255);ellipse(250,250,40,30);
fill(0);textSize(12);text("Nope", 235,253);
player = minim.loadFile("Nope (Construction Worker TF2) - Gaming Sound Effect (HD).mp3");
player.play();
}


}




strokeWeight(10);
stroke(0);
  noFill();
     int c = 0;
for (float x = 255; x > 0; x -=1){
stroke(5);fill(71,74,87);rect(c, 5, 40, 40);
 c = c + 20; }

  
  int h = 0;
for (int v = 255; v > 0; v -=5) {
fill(71,74,87);stroke(20);strokeWeight(20); circle(h, 15, 10);
 h = h + 30; 
}





   int w = 0;
for (float q = 255; q > 0; q -=1){
stroke(0);strokeWeight(10);fill(71,74,87);rect(w, 755, 40, 40);
 w = w + 20; 
}

  int z = 0;
for (int v = 255; v > 0; v -=5) {
fill(71,74,87);stroke(0);strokeWeight(20); circle(z, 785, 10);
z = z + 30; 

}




//custom functions start **********
}




void LeftEye(int x, int y, int diameter){
fill(0); 
strokeWeight(10); 
stroke(0);
circle(x,  y, diameter);

}

void RightEye(int x, int y, int diameter){
fill(0); 
strokeWeight(10); 
stroke(0); 
circle(x, y, diameter);
}
