//Max v2.4 by Seku Burris
// Move the mouse in various directions to see Max's Eye color change.
//Press the power button at the bottom right to turn on Max
//hold down the power button for the latest wheather reports
//press any key to turn Max off
float a;
float b;
float c;
float d;
float diam;
float x1;
float y1;
float x2;
float y2; 
float x3;
float y3; 
PImage img;
float cloudX = 160;
float cloudX2 = 120;
float cloudX3 = 620;
float cloudX4 = 20;
float cloudX5 = 600;
float cloudX6 = 670;
float cloudX7 = 770;
float cloudX8 = 100;
int h = hour();  

float q = 1.1;
int r = 1;
float s;
int k = 20;
float m;


void setup(){
size(800, 800); 

}

void keyPressed(){
if ((h >= 7) && (h < 17)){

background(48,139,206);


}
else if ((h >= 17) && (h <= 21)){
background(255,100,0);



}
else if ((h > 21) && (h <7)) {
background(71,74,87);
//frameRate(8);
noStroke();
fill(255, 255, 255);circle(460,120,3);
fill(255, 255, 255);circle(400,220,3);
fill(255, 255, 255);circle(100,320,3);
fill(255, 255, 255);circle(700,420,3);
fill(255, 255, 255);circle(400,520,3);
fill(255, 255, 255);circle(200,720,3);
fill(255, 255, 255);circle(700,620,3);
fill(255, 255, 255);circle(100,120,3);

}

 fill(255);noStroke();ellipse(cloudX,160, 60,20);
  cloudX++;
  if (cloudX > width) {
    cloudX = 0;
  }

fill(255);ellipse(cloudX2,170,50,20);
 cloudX2++;
  if (cloudX2 > width) {
    cloudX2 = 0;

}


fill(255);ellipse(cloudX3,270,100,40);
 cloudX3++;
  if (cloudX3 > width) {
    cloudX3 = 0;
}

fill(255);ellipse(cloudX4,670,100,40);
 cloudX4++;
  if (cloudX4 > width) {
    cloudX4 = 0;
  }
  
fill(255);ellipse(cloudX5,700,60,10);
 cloudX5++;
  if (cloudX5 > width) {
    cloudX5 = 0;
  }
fill(255);ellipse(cloudX6,660,100,20);
 cloudX6++;
  if (cloudX6 > width) {
    cloudX6 = 0;
  }
fill(255);ellipse(cloudX7,160,80,30);
 cloudX7++;
  if (cloudX7 > width) {
    cloudX7 = 0; 
  }
  
 fill(255);ellipse(cloudX8,400,300,100); 
   cloudX8++;
  if (cloudX8 > width) {
    cloudX8 = 0;

}

stroke(0);strokeWeight(1);fill(128,128,128);rect(80,230,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(180,230,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(280,230,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(380,230,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(480,230,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(580,230,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(680,230,90,30);

String[] Week = {"MON","TUE","WED","THU","FRI","SAT","SUN"};
fill(0);
textSize(22);text(Week[0], 100,250);
textSize(22);text(Week[1], 200,250);
textSize(22);text(Week[2], 300,250);
textSize(22);text(Week[3], 400,250);
textSize(22);text(Week[4], 500,250);
textSize(22);text(Week[5], 600,250);
textSize(22);text(Week[6], 700,250);  






stroke(0);strokeWeight(1);noFill();rect(80,230,90,380);
stroke(0);strokeWeight(1);noFill();rect(180,230,90,380);
stroke(0);strokeWeight(1);noFill();rect(280,230,90,380);
stroke(0);strokeWeight(1);noFill();rect(380,230,90,380);
stroke(0);strokeWeight(1);noFill();rect(480,230,90,380);
stroke(0);strokeWeight(1);noFill();rect(580,230,90,380);
stroke(0);strokeWeight(1);noFill();rect(680,230,90,380);


stroke(0);strokeWeight(1);fill(0,0,255);rect(80,570,90,40);
stroke(0);strokeWeight(1);fill(0,0,255);rect(180,570,90,40);
stroke(0);strokeWeight(1);fill(0,0,255);rect(280,570,90,40);
stroke(0);strokeWeight(1);fill(0,0,255);rect(380,570,90,40);
stroke(0);strokeWeight(1);fill(0,0,255);rect(480,570,90,40);
stroke(0);strokeWeight(1);fill(0,0,255);rect(580,570,90,40);
stroke(0);strokeWeight(1);fill(0,0,255);rect(680,570,90,40);

stroke(0);strokeWeight(1);fill(128,128,128);rect(80,505,90,60);
stroke(0);strokeWeight(1);fill(128,128,128);rect(180,505,90,60);
stroke(0);strokeWeight(1);fill(128,128,128);rect(280,505,90,60);
stroke(0);strokeWeight(1);fill(128,128,128);rect(380,505,90,60);
stroke(0);strokeWeight(1);fill(128,128,128);rect(480,505,90,60);
stroke(0);strokeWeight(1);fill(128,128,128);rect(580,505,90,60);
stroke(0);strokeWeight(1);fill(128,128,128);rect(680,505,90,60);
//header
stroke(0);strokeWeight(1);fill(128,128,128);rect(0,100,800,60);
stroke(0);strokeWeight(1);fill(0,0,255);rect(0,150,800,10);


fill(0);
textSize(22);text("X",120,545);
textSize(22);text("X",220,545);
textSize(22);text("X",320,545);
textSize(22);text("X",420,545);
textSize(22);text("X",520,545);
textSize(22);text("X",620,545);
textSize(22);text("X",720,545); 



fill(0);
textSize(22);text("X",120,600);
textSize(22);text("X",220,600);
textSize(22);text("X",320,600);
textSize(22);text("X",420,600);
textSize(22);text("X",520,600);
textSize(22);text("X",620,600);
textSize(22);text("X",720,600); 


//header text
textSize(32);text("7-DAY FORECAST",440,150); 


}





void draw(){

// Mousepressed code start *************

//7 17
if (mousePressed && mouseX > 720 && mouseY > 720 && (h >= 7) && (h < 17)){

background(48,139,206);
img = loadImage("precipitation.png");
image(img, 500, 205, 80, 80 );
img = loadImage("Winds.png");
image(img, 500, 55, 80, 80 );
img = loadImage("humidity.png");tint(225);
image(img, 500, 125, 80, 80 );
fill(255, 169, 0);circle(400,400,220);
fill(255, 255, 0);circle(400,400,200);
fill(255, 255, 0);circle(320,220,12);
fill(255, 255, 0);circle(680,570,12);

fill(0);ellipse(400,372,25,20);
fill(0);ellipse(450,372,25,20);

fill(255,255,0);ellipse(400,374,26,17);noStroke();
fill(255,255,0);ellipse(450,374,26,17);noStroke();

RightEye(400,400,20);
LeftEye(450,400,20);
fill(0);ellipse(420,450,35,25);
noStroke();fill(255,255,0);ellipse(420,440,45,25);
fill(0);circle(435,430,12);
fill(255,255,0);circle(430,430,12);

if (mouseX > 720 && mouseY > 720){
noStroke(); fill(255,0, 0); rect(720, 720, 80, 80);}

else  
{noStroke(); fill(255, 255, 0);rect(720, 720, 80, 80); }

int z = 0; 
for (int l = 255; l > 0; l -=5){
fill(255, 255, 0); stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 
}

  
 int h = 0;
for (int v = 255; v > 0; v -=5) {
 fill(255, 255, 0);stroke(20);strokeWeight(20); circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
 fill(255, 255, 0);stroke(0);rect(w, 760, 40, 40);
 w = w + 20; 


textSize(32);text("Todays High", 200,200);
textSize(32);text("X ", 280,250);
textSize(32);text("Todays Low", 550,550);
textSize(32);text("X ", 640,600);
textSize(32);text("Wind X", 550,105);
textSize(32);text("Humidity X", 550,175);
textSize(32);text("Precipitation X", 550,245);


//int star = 12;


}
}
//17 21
else if (mousePressed && mouseX > 720 && mouseY > 720 && (h >= 17) && (h <= 21)){
background(255,100,0);
img = loadImage("precipitation.png");
image(img, 500, 205, 80, 80 );
img = loadImage("Winds.png");
image(img, 500, 55, 80, 80 );
img = loadImage("humidity.png");tint(255);
image(img, 500, 125, 80, 80 );

fill(255, 185, 0);circle(400,400,150);
fill(255, 200, 0);circle(400,400,100);
fill(255, 255, 0);circle(320,220,12);
fill(255, 255, 0);circle(680,570,12);
RightEye(375,385,15);
LeftEye(425,385,15);
noStroke();fill(255,200,0);circle(375,375,35);
noStroke();fill(255,200,0);circle(425,375,35);

noStroke();fill(0);circle(373,377,25);
noStroke();fill(255,200,0);ellipse(373,380,29,25);

noStroke();fill(0);circle(425,377,25);
noStroke();fill(255,200,0);ellipse(425,380,29,25);


fill(0);ellipse(400,425,35,25);
noStroke();fill(255,200,0);ellipse(400,420,35,25);
fill(0);circle(400,413,12);
fill(255,200,0);circle(400,410,12);

if (mouseX > 720 && mouseY > 720){
noStroke(); fill(255, 0, 0); rect(720, 720, 80, 80);}

else  
{noStroke(); fill(255, 200, 0);rect(720, 720, 80, 80); } 

int z = 0; 
for (int l = 255; l > 0; l -=5){
fill(255, 200, 0); stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 
}

 
 
 int h = 0;
for (int v = 255; v > 0; v -=5) {
 fill(255, 200, 0);stroke(20);strokeWeight(20); circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
 fill(255, 200, 0);stroke(0);rect(w, 760, 40, 40);
 w = w + 20; 

textSize(32);text("Todays High", 200,200);
textSize(32);text("X ", 280,250);
textSize(32);text("Todays Low", 550,550);
textSize(32);text("X ", 640,600);
textSize(32);text("Wind X", 550,105);
textSize(32);text("Humidity X", 550,175);
textSize(32);text("Precipitation X", 550,245);
}
}
//21 7
else if (mousePressed && mouseX > 720 && mouseY > 720 && (h > 21) && (h < 7)) {
background(71,74,87);
img = loadImage("precipitation.png");
image(img, 500, 205, 80, 80 );
img = loadImage("Winds.png");
image(img, 500, 55, 80, 80 );
img = loadImage("humidity.png");tint(255);
image(img, 500, 125, 80, 80 );
fill(255, 255, 0);circle(400,400,200);

RightEye(365,385,20);
LeftEye(435,385,20);
noStroke();fill(255, 255, 0);ellipse(365,380,35,25);
noStroke();fill(255, 255, 0);ellipse(435,380,35,25);
noStroke();fill(0);ellipse(400,450,35,25);
fill(255, 255, 0);circle(320,220,12);
fill(255, 255, 0);circle(680,570,12);
noStroke();fill(255,255,0);ellipse(400,415,15,12);
fill(240,196,32);circle(380,340,40);
fill(240,196,32);circle(440,480,20);
fill(240,196,32);circle(470,430,25);
fill(240,196,32);circle(360,440,15);
fill(240,196,32);circle(450,360,10);


textSize(40);
fill(0);text("Z", 450, 330); 
textSize(32);
fill(0);text("Z", 470, 290); 
textSize(22);
fill(0);text("Z", 500, 310); 


if (mouseX > 720 && mouseY > 720){
noStroke(); fill(255,0,0); rect(720, 720, 80, 80);}

else 
{noStroke(); fill(255,200,0);;rect(720, 720, 80, 80); }

int z = 0; 
for (int l = 255; l > 0; l -=5){
fill(71,74,87); stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 
}

  
 int h = 0;
for (int v = 255; v > 0; v -=5) {
fill(71,74,87);stroke(20);strokeWeight(20); circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
fill(71,74,87);stroke(0);rect(w, 760, 40, 40);
 w = w + 20; 
}
fill(255, 255, 0);
textSize(32);text("Todays High", 200,200);
textSize(32);text("X ", 280,250);
textSize(32);text("Todays Low", 550,550);
textSize(32);text("X ", 640,600);
textSize(32);text("Wind X", 550,105);
textSize(32);text("Humidity X", 550,175);
textSize(32);text("Precipitation X", 550,245);

//This will be snow
//a = 255;
//b = 255;
//c = 255;

//x1 = random(width);
//y1= random(height);

//x2 = random(width);
//y2 = random(height);

//x3 = random(width);
//y3 = random(height);

//diam = random(12);

//noStroke();
//fill(a,b,c,255);
//ellipse(x1, y1, diam, diam);
//ellipse(x2, y2, diam, diam);
//ellipse(x3, y3, diam, diam);

//This will be rain

}
// Mousepressed code end *************




// Homescreen Background code start *************
if (!mousePressed)
//7 17
if ((h >= 7) && (h < 17)){
background(48,139,206);



fill(255, 169, 0);circle(650,200,220);
fill(255, 255, 0);circle(650,200,200);
fill(255, 255, 0);circle(510,120,12);

textSize(22);text("Click the mouse once and then hold down", 0,600);
textSize(22);text("the W key to see the 7 day weather report.", 0,625);
textSize(32);text("Currently", 400,100);
textSize(42);text("X", 460,150); 
textSize(20);text("Todays", 723,665); 
textSize(20);text("Weather", 720,685);
textSize(20);text("Forcast", 720, 705);

textSize(32);
text("Todays date is ", 100, 200); 



textSize(32);
text("/", 185, 240); 
textSize(32);
text("/", 215, 240); 

int month = month();
String m = String.valueOf(month);
text(m, 150, 240); 

int day = day();
String s = String.valueOf(day);
text(s, 200, 240);

int year = year();
String y = String.valueOf(year);
text(y, 230, 240);

textSize(32);
text("The time now is:", 480,525); 
 


int second = second(); 
String se = String.valueOf(second);
text(se, 630, 565);
int minute = minute(); 
String mi = String.valueOf(minute);
text(mi, 580, 565);
int hour = hour(); 
String ho = String.valueOf(hour);
text(ho, 530, 565);

textSize(32);
text(":", 570, 565); 
textSize(32);
text(":", 620, 565);

if (mouseX > 720 && mouseY > 720){
noStroke(); fill(255,0, 0); rect(720, 720, 80, 80);}

else  
{noStroke(); fill(255, 255, 0);rect(720, 720, 80, 80); }

int z = 0; 
for (int l = 255; l > 0; l -=5){
fill(255, 255, 0); stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 
}

  
 int h = 0;
for (int v = 255; v > 0; v -=5) {
 fill(255, 255, 0);stroke(20);strokeWeight(20); circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
 fill(255, 255, 0);stroke(0);rect(w, 760, 40, 40);
 w = w + 20; 

}

}
//17 21
else if ((h >= 17) && (h <= 21)) {
background(255,100,0);
fill(255, 185, 0);circle(400,400,150);
fill(255, 200, 0);circle(400,400,100);
fill(255, 200, 0);circle(710,120,12);
 
textSize(22);text("Click the mouse once and then hold down", 0,600);
textSize(22);text("the W key to see the 7 day weather report.", 0,625);
textSize(32);text("Currently", 600,100);
textSize(42);text("X", 660,150);

textSize(20);text("Todays", 723,665); 
textSize(20);text("Weather", 720,685);
textSize(20);text("Forcast", 720, 705);
 
textSize(32);
text("Todays date is ", 100, 200); 

textSize(32);
text("/", 185, 240); 
textSize(32);
text("/", 215, 240); 

int month = month();
String m = String.valueOf(month);
text(m, 150, 240); 

int day = day();
String s = String.valueOf(day);
text(s, 200, 240);

int year = year();
String y = String.valueOf(year);
text(y, 230, 240);

textSize(32);
text("The time now is:", 480,525); 


int second = second();  
String se = String.valueOf(second);
text(se, 630, 565);
int minute = minute();  
String mi = String.valueOf(minute);
text(mi, 580, 565);
int hour = hour(); 
String ho = String.valueOf(hour);
text(ho, 530, 565);

textSize(32);
text(":", 570, 565); 
textSize(32);
text(":", 620, 565);

if (mouseX > 720 && mouseY > 720){
noStroke(); fill(255, 0, 0); rect(720, 720, 80, 80);}

else 
{noStroke(); fill(255, 200, 0);rect(720, 720, 80, 80); } 

int z = 0; 
for (int l = 255; l > 0; l -=5){
fill(255, 200, 0); stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 
}

 
 
 int h = 0;
for (int v = 255; v > 0; v -=5) {
 fill(255, 200, 0);stroke(20);strokeWeight(20); circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
 fill(255, 200, 0);stroke(0);rect(w, 760, 40, 40);
 w = w + 20; 

}


}
else {
background(71,74,87);

fill(255, 255, 0);circle(650,200,200);
fill(240,196,32);circle(660,285,20);
fill(240,196,32);circle(650,250,30);
fill(240,196,32);circle(675,150,40);
fill(240,196,32);circle(710,220,25);
fill(112, 128, 144);circle(750,20,20);
fill(71,74,87);circle(550,200,220);
fill(255, 255, 0);circle(560,120,12);


//stars
fill(255, 255, 255);circle(460,120,3);
fill(255, 255, 255);circle(400,220,3);
fill(255, 255, 255);circle(100,320,3);
fill(255, 255, 255);circle(700,420,3);
fill(255, 255, 255);circle(400,520,3);
fill(255, 255, 255);circle(200,720,3);
fill(255, 255, 255);circle(700,620,3);
fill(255, 255, 255);circle(100,120,3);
fill(255, 255, 0);

textSize(22);text("Click the mouse once and then hold down", 0,600);
textSize(22);text("the W key to see the 7 day weather report.", 0,625);
textSize(32);text("Currently", 450,100);
textSize(42);text("X", 510,150);  
textSize(20);text("Todays", 723,665);  
textSize(20);text("Weather", 720,685);
textSize(20);text("Forcast", 720, 705);

textSize(32);
text("Todays date is ", 100, 200); 

textSize(32);
text("/", 185, 240); 
textSize(32);
text("/", 215, 240); 

int month = month();
String m = String.valueOf(month);
text(m, 150, 240); 

int day = day();
String s = String.valueOf(day);
text(s, 200, 240);

int year = year();
String y = String.valueOf(year);
text(y, 230, 240);

textSize(32);
text("The time now is:", 480,525); 


int second = second();  
String se = String.valueOf(second);
text(se, 630, 565);
int minute = minute();  
String mi = String.valueOf(minute);
text(mi, 580, 565);
int hour = hour(); 
String ho = String.valueOf(hour);
text(ho, 530, 565);

textSize(32);
text(":", 570, 565); 
textSize(32);
text(":", 620, 565);

if (mouseX > 720 && mouseY > 720){
noStroke(); fill(255,0,0); rect(720, 720, 80, 80);}

else 
{noStroke(); fill(255,200,0);;rect(720, 720, 80, 80); }

int z = 0; 
for (int l = 255; l > 0; l -=5){
fill(71,74,87); stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 
}

  
 int h = 0;
for (int v = 255; v > 0; v -=5) {
fill(71,74,87);stroke(20);strokeWeight(20); circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
fill(71,74,87);stroke(0);rect(w, 760, 40, 40);
 w = w + 20; 

}



}

frameRate(8);


 fill(255);noStroke();ellipse(cloudX,160, 60,20);
  cloudX++;
  if (cloudX > width) {
    cloudX = 0;
  }

fill(255);ellipse(cloudX2,170,50,20);
 cloudX2++;
  if (cloudX2 > width) {
    cloudX2 = 0;

}


fill(255);ellipse(cloudX3,270,100,40);
 cloudX3++;
  if (cloudX3 > width) {
    cloudX3 = 0;
}

fill(255);ellipse(cloudX4,670,100,40);
 cloudX4++;
  if (cloudX4 > width) {
    cloudX4 = 0;
  }
  
fill(255);ellipse(cloudX5,700,60,10);
 cloudX5++;
  if (cloudX5 > width) {
    cloudX5 = 0;
  }
fill(255);ellipse(cloudX6,660,100,20);
 cloudX6++;
  if (cloudX6 > width) {
    cloudX6 = 0;
  }
fill(255);ellipse(cloudX7,160,80,30);
 cloudX7++;
  if (cloudX7 > width) {
    cloudX7 = 0; 
  }
  
 fill(255);ellipse(cloudX8,400,300,100); 
   cloudX8++;
  if (cloudX8 > width) {
    cloudX8 = 0;

}

// Homescreen Background code start *************

  

  
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
