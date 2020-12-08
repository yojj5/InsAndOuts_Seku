
import ddf.minim.*;
Minim minim;
PImage img;

AudioPlayer Angry;
AudioPlayer Annoyed;
AudioPlayer Confused;
AudioPlayer Happy;
AudioPlayer Confident;
AudioPlayer Calm; 
AudioPlayer Disappointed;
AudioPlayer Sad;
AudioPlayer Evil;
AudioPlayer Default;


import processing.serial.*; 
Serial myPort; 
int val=0;

PImage cursor;

void setup(){
size(800, 800); 
printArray(Serial.list()); 
  String portName = Serial.list()[0];
 myPort = new Serial(this, portName, 9600);

smooth();
noCursor();

cursor = loadImage("rocketcursor.png");







minim = new Minim(this);
Angry = minim.loadFile("Three Days Grace - Riot (Official Audio).mp3");
Annoyed = minim.loadFile("Nope (Construction Worker TF2) - Gaming Sound Effect (HD).mp3");
Confused = minim.loadFile("Why Can't We Be Friends.mp3");
Happy = minim.loadFile("Bag Raiders - Shooting Stars (Lyrics).mp3");
Confident = minim.loadFile("Nonstop.mp3");
Calm= minim.loadFile("Interstellar - Main Theme - Hans Zimmer.mp3"); 
Disappointed = minim.loadFile("DaBaby ROCKSTAR FT RODDY RICH (Instrumental).mp3");
Sad = minim.loadFile("Naruto - Sadness and Sorrow (Odece Trap Remix).mp3");
Evil = minim.loadFile("Eminem clean.mp3");
Default = minim.loadFile("Kanye West - All Of The Lights (Instrumental).mp3"); 
Default.loop();

}

void keyPressed(){

 if (key == 's') {
Angry.pause();
Annoyed.pause();
Confused.pause();
Happy.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Evil.pause();
Default.rewind();
Default.loop();

//reset button
noStroke();fill(71,74,87);rect(1, 515, 800, 10);
//noStroke();fill(71,74,87);rect(320, 660, 120, 40);
stroke(255);strokeWeight(10);noFill();rect(320, 660, 124, 44);

 }



}





void draw(){

 myPort.write(0);


noStroke();

background(0); 
img = loadImage("planets3.jpg");
image(img, 0,0, 800, 600 );
fill(0);rect(0,520,800,400);



fill(71,74,87);textSize(32);text("Welcome to EMO!", 40,100);
fill(71,74,87);textSize(22);text("The emotional regulator app", 40,140);
fill(71,74,87);textSize(22);text("Click on any planet to play a song and enjoy a light show.", 100,550);
//fill(71,74,87);textSize(22);text("", 80,580);
fill(71,74,87);textSize(22);text("Please wait for lights to stop flashing before starting another song.", 60,740);


//reset button
noStroke();fill(71,74,87);rect(1, 515, 800, 10);
noStroke();fill(71,74,87);rect(320, 660, 120, 40);
//if (mouseX < 460 && mouseX > 310  && mouseY < 710 && mouseY > 650){
//stroke(255);strokeWeight(10);noFill();rect(320, 660, 124, 44);

//}
fill(0);textSize(20);text("Press 'S'", 345,680);
fill(0);textSize(15);text("(Defualt music)", 325,695);
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


//mars
noStroke();strokeWeight(0);fill(0);circle(360,60,13);
noStroke();strokeWeight(0);fill(0);circle(385,60,13);

noStroke();strokeWeight(0);fill(0);circle(373,75,13);

noStroke();strokeWeight(0);fill(139,69,19);circle(373,72,13);
stroke(0);strokeWeight(2);line(365,90,380,85);
stroke(139,69,19);strokeWeight(8);noFill();circle(373,70,70);


//Pluto
noStroke();strokeWeight(0);fill(0);ellipse(760,240,7,9);
noStroke();strokeWeight(0);fill(0);ellipse(770,240,7,9);
stroke(105,105,105);strokeWeight(5);noFill();circle(771,242,35);

stroke(0);strokeWeight(2);line(757,233,763,235);
stroke(0);strokeWeight(2);line(767,235,773,233);

noStroke();strokeWeight(0);fill(0);circle(765,247,5);
noStroke();strokeWeight(0);fill(112,128,144);ellipse(767,247,6,5);

noStroke();strokeWeight(0);fill(0);ellipse(767,254,8,5);
noStroke();strokeWeight(0);fill(112,128,144);ellipse(767,252,9,4);


//saturn
noStroke();strokeWeight(0);fill(0);ellipse(550,200,9,11);
noStroke();strokeWeight(0);fill(0);ellipse(570,200,9,11);
noStroke();strokeWeight(0);fill(0);ellipse(565,213,9,9);
noStroke();strokeWeight(0);fill(220,220,220);ellipse(563,213,9,9);
stroke(0);strokeWeight(2);line(560,225,565,225);

//THE SUN MOUSEPRESSED
if (mouseX < 180 && mouseY < 370 && mouseY > 210){
stroke(0);strokeWeight(8);noFill();circle(85,290,166);
fill(255,0, 0);
textSize(32);text("ANGRY", 80,180);
textSize(22);text("(The Sun)", 80,200);
img = loadImage("nolight.jpg");
image(img, 500, 580, 75, 75 );
fill(255,0,0);textSize(22);text("No flashing lights.", 280,620);
if (mouseX < 180 && mouseY < 370 && mouseY > 200 && mousePressed){
Angry.rewind();
Angry.loop();

Annoyed.pause();
Confused.pause();
Happy.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Evil.pause();
Default.pause();
}
}
//EARTH MOUSEPRESSED
if (mouseX < 420 && mouseX > 300 && mouseY > 220 && mouseY < 340){
noFill();stroke(0);strokeWeight(8);ellipse(355,280,110,110);
fill(255, 255, 0);
textSize(32);text("HAPPY", 300,200);
textSize(22);text("(Earth)", 315,220);
img = loadImage("nolight.jpg");
image(img, 500, 580, 75, 75 );
fill(255,0,0);textSize(22);text("No flashing lights.", 280,620);
if (mouseX < 420 && mouseX > 300 && mouseY > 220 && mouseY < 340 && mousePressed){
Happy.rewind();
Happy.loop();

Annoyed.pause();
Confused.pause();
Angry.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Evil.pause();
Default.pause();
}
}
//NEPTUNE MOUSEPRESSED
if (mouseX < 730 && mouseX > 670 && mouseY > 380 && mouseY < 440){
noFill();stroke(0);strokeWeight(6);ellipse(700,410,65,65);
fill(0,0, 255);
textSize(22);text("SAD", 600,400);
textSize(22);text("(Neptune)", 570,420);
img = loadImage("Light.jpg");
image(img, 500, 640, 75, 75 );
fill(255,0,0);textSize(42);text("WARNING!!!", 280,590);
fill(255,0,0);textSize(22);text("Flashing lights will activate if you click here.", 140,620);
if (mouseX < 730 && mouseX > 670 && mouseY > 380 && mouseY < 440 && mousePressed){
 
  
  myPort.write(1);
 println ("1");

Sad.rewind();
Sad.loop();

Annoyed.pause();
Confused.pause();
Angry.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Evil.pause();
Happy.pause();
Default.pause();
}
}
//JUPITER MOUSEPRESSED
if (mouseX < 530 && mouseX > 400 && mouseY > 400 && mouseY < 520){
noFill();stroke(0);strokeWeight(8);ellipse(470,460,122,112);
fill(169,169, 169);
textSize(22);text("CALM", 525,400);
textSize(22);text("(Jupiter)", 520,420);
img = loadImage("nolight.jpg");
image(img, 500, 580, 75, 75 );
fill(255,0,0);textSize(22);text("No flashing lights.", 280,620);
if (mouseX < 530 && mouseX > 400 && mouseY > 400 && mouseY < 520 && mousePressed){
Calm.rewind();
  Calm.loop();

Annoyed.pause();
Confused.pause();
Angry.pause();
Confident.pause();
Disappointed.pause();
Sad.pause();
Evil.pause();
Happy.pause();
Default.pause();
}
}


//VENUS MOUSEPRESSED
if (mouseX < 300 && mouseX > 200 && mouseY > 380 && mouseY < 490){
stroke(0);strokeWeight(8);noFill();circle(250,435,78);
fill(205,165,78);
textSize(30);text("CONFIDENT", 200,380);
textSize(30);text("(Venus)", 230,400);
img = loadImage("nolight.jpg");
image(img, 500, 580, 75, 75 );
fill(255,0,0);textSize(22);text("No flashing lights.", 280,620);
if (mouseX < 300 && mouseX > 200 && mouseY > 380 && mouseY < 490 && mousePressed){
  Confident.rewind();
  Confident.loop();



Annoyed.pause();
Confused.pause();
Angry.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Evil.pause();
Happy.pause();
Default.pause();
}
}
//URANUS MOUSE PRESSED
if (mouseX < 700 && mouseX > 600 && mouseY > 50 && mouseY < 140){
stroke(0);strokeWeight(8);noFill();circle(650,97,82);
fill(80,80,255);
textSize(22);text("DISAPPOINTED", 450,80);
textSize(22);text("(Uranus)", 480,100);
img = loadImage("Light.jpg");
image(img, 500, 640, 75, 75 );
fill(255,0,0);textSize(42);text("WARNING!!!", 280,590);
fill(255,0,0);textSize(22);text("Flashing lights will activate if you click here.", 140,620);
if (mouseX < 700 && mouseX > 600 && mouseY > 50 && mouseY < 140 && mousePressed){
   
  
  myPort.write(3); 
    println ("3");
  
  Disappointed.rewind();
  Disappointed.loop();

Annoyed.pause();
Confused.pause();
Angry.pause();
Confident.pause();
Calm.pause(); 
Sad.pause();
Evil.pause();
Happy.pause();
Default.pause();
}
}


//MERCURY MOUSEPRESSED
if (mouseX < 220 && mouseX > 180 && mouseY > 180 && mouseY < 230){
stroke(0);strokeWeight(4);noFill();ellipse(200,207,38,38);
fill(205,165,78);
textSize(22);text("ANNOYED", 220,200);
textSize(22);text("(Mecury)", 230,220);
img = loadImage("nolight.jpg");
image(img, 500, 580, 75, 75 );
fill(255,0,0);textSize(22);text("No flashing lights.", 280,620);
if (mouseX < 220 && mouseX > 180 && mouseY > 180 && mouseY < 230 && mousePressed){
fill(255);ellipse(225,215,8,6);
fill(255);ellipse(230,230,15,10);
fill(255);ellipse(250,250,40,30);
fill(0);textSize(12);text("Nope", 235,253);
Annoyed.rewind();
Annoyed.play();

Happy.pause();
Confused.pause();
Angry.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Evil.pause();
Default.pause();
}
}
//MARS MOUSEPRESSED
if (mouseX < 420 && mouseX > 320 && mouseY > 20 && mouseY < 120){
stroke(0);strokeWeight(8);noFill();circle(373,70,80);
fill(205,165,78);
textSize(22);text("CONFUSED", 400,120);
textSize(22);text("(Mars)", 420,140);
img = loadImage("nolight.jpg");
image(img, 500, 580, 75, 75 );
fill(255,0,0);textSize(22);text("No flashing lights.", 280,620);
if (mouseX < 420 && mouseX > 320 && mouseY > 20 && mouseY < 120 && mousePressed){
Confused.rewind();
  Confused.loop();
  
Happy.pause();
Annoyed.pause();
Angry.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Evil.pause();
Default.pause();
}
}
//PLUTO MOUSEPRESSED
if (mouseX < 800 && mouseX > 745 && mouseY > 215 && mouseY < 265){
stroke(0);strokeWeight(5);noFill();circle(771,242,45);
fill(71,74,87);
textSize(22);text("EVIL", 690,220);
textSize(22);text("(Pluto)", 680,240);
img = loadImage("Light.jpg");
image(img, 500, 640, 75, 75 );
fill(255,0,0);textSize(42);text("WARNING!!!", 280,590);
fill(255,0,0);textSize(22);text("Flashing lights will activate if you click here.", 140,620);
if (mouseX < 800 && mouseX > 745 && mouseY > 215 && mouseY < 265 && mousePressed){
   
  
  myPort.write(4); 
    println ("4");
  
  Evil.rewind();
  Evil.loop();
  
Annoyed.pause();
Confused.pause();
Angry.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Happy.pause(); 
Default.pause();
}
}
if (mouseX < 600 && mouseX > 510 && mouseY > 175 && mouseY < 250){

fill(255);
textSize(22);text("QUIET", 610,220);
textSize(22);text("(Saturn)", 600,240);
img = loadImage("nolight.jpg");
image(img, 500, 580, 75, 75 );
fill(255,0,0);textSize(22);text("No flashing lights.", 280,620);
if (mouseX < 600 && mouseX > 510 && mouseY > 175 && mouseY < 260 && mousePressed){
Evil.pause();
Annoyed.pause();
Confused.pause();
Angry.pause();
Confident.pause();
Calm.pause(); 
Disappointed.pause();
Sad.pause();
Happy.pause(); 
Default.pause();
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


image(cursor, mouseX,mouseY, 50, 50);

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
