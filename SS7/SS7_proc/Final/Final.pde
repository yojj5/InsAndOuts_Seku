//Moody Weather app by Seku K. Burris
//The background and emojis change in facial expressions and color
//based on what time of the day it is.
//At 5p.m.  and 9p.m. o clock the facial expressions and backgrounds 
//change to represent what time of day it is.
import processing.serial.*; 
Serial myPort; 
int val=0;

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

int temp;
String description;
int humidity;
int temp_max;
int temp_min;
int speed;
//String speed;
String wind;
int pressure;
int feels_like;
int dt;
int daily;
int day;
int epoch = 1603538087;
String date = new java.text.SimpleDateFormat("MM/dd/yyyy").format(new java.util.Date (epoch*1000L));
int day1;
int weather;


void setup(){
size(800, 800); 
printArray(Serial.list()); 
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);


String key= "1e73eb5975b9055051f49fa6a33e1032"; 

String url = "http://api.openweathermap.org/data/2.5/weather?q=Queens&units=imperial&appid=" + key;

String Weekly = "https://api.openweathermap.org/data/2.5/onecall?lat=40.6512&lon=-73.3426&exclude=minute,hourly,alerts&units=imperial&appid=" + key; 

  //7 day Weekly forcast starting with today as the first day************
  
  JSONObject forecast = loadJSONObject(Weekly);
  JSONObject current = forecast.getJSONObject("current");
  JSONArray daily = forecast.getJSONArray("daily");
  feels_like = int(current.getFloat("feels_like"));
  dt = int(current.getFloat("dt"));


   
  JSONObject current_weather = loadJSONObject(url); 
  JSONObject main= current_weather.getJSONObject("main"); 
  temp = int(main.getFloat("temp"));
  humidity = int(main.getFloat("humidity"));
  temp_max = int(main.getFloat("temp_max"));
  temp_min = int(main.getFloat("temp_min"));
  pressure = int(main.getFloat("pressure"));
  JSONObject wind= current_weather.getJSONObject("wind");
  speed = int(wind.getFloat("speed"));

  JSONArray descriptions_array = current_weather.getJSONArray("weather"); 
  JSONObject descriptions_object = descriptions_array.getJSONObject(0); 
  description = descriptions_object.getString("description");

println(day);
//println(weather);

println(temp);



println(daily);
println(dt);
println(date);
println(feels_like);
println(speed);  
println(temp_min);
println(temp_max); 
println(temp);
println(description);
println(humidity);






}

void keyPressed(){


  
  
if ((h >= 7) && (h < 17)){
//background(48,139,206);
background(48,139,206);

 if ( myPort.available() > 0) { 
    val = myPort.read(); 
  }

  
  //background(255);
  fill (0);
  //ellipse (width/2, height/2, val, val);
background(val,139,206);
}

else if ((h >= 17) && (h <= 21)){
background(255,100,0);
 


}
else if ((h > 21) || (h <7)) 
{
background(71,74,87);
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


//fill(0,0,128);textSize(42);text("Current Real Feel",250,100);
// textSize(92);text(feels_like,350,220);
//fill(0, 0, 128);circle(475,145,12);

stroke(0);strokeWeight(1);fill(128,128,128);rect(80,380,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(180,380,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(280,380,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(380,380,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(480,380,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(580,380,90,30);
stroke(0);strokeWeight(1);fill(128,128,128);rect(680,380,90,30);

String[] Week = {"MON","TUE","WED","THU","FRI","SAT","SUN"};
fill(0);
textSize(22);text(Week[0], 100,405);
textSize(22);text(Week[1], 200,405);
textSize(22);text(Week[2], 300,405);
textSize(22);text(Week[3], 400,405);
textSize(22);text(Week[4], 500,405);
textSize(22);text(Week[5], 600,405);
textSize(22);text(Week[6], 700,405);  






stroke(0);strokeWeight(1);noFill();rect(80,380,90,205);
stroke(0);strokeWeight(1);noFill();rect(180,380,90,205);
stroke(0);strokeWeight(1);noFill();rect(280,380,90,205);
stroke(0);strokeWeight(1);noFill();rect(380,380,90,205);
stroke(0);strokeWeight(1);noFill();rect(480,380,90,205);
stroke(0);strokeWeight(1);noFill();rect(580,380,90,205);
stroke(0);strokeWeight(1);noFill();rect(680,380,90,205);


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
stroke(0);strokeWeight(1);fill(128,128,128);rect(0,300,800,60);
stroke(0);strokeWeight(1);fill(0,0,255);rect(0,350,800,10);


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
//fill(0,0,x);textSize(32);text("7-DAY FORECAST",440,350); 


  float size = random (50);

textSize(32);text("7-DAY FORECAST",440,350); 
  for (float flash = size; flash >= 0; flash -= random(10, 2)) {
fill(random(0), random(0), random(250));

textSize(42);text("Current Real Feel",250,100);
fill(0, 0, 128);textSize(92);text(feels_like,350,220);
fill(0, 0, 128);circle(475,145,12);



}
}






void draw(){

// Mousepressed code start *************

//7 17
if (mousePressed && mouseX > 720 && mouseY > 720 && (h >= 7) && (h < 17)){

background(48,139,206);
img = loadImage("pressure.png");
image(img, 500, 205, 75, 75 );
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
textSize(32);text(temp_max, 275,250);
textSize(32);text("Todays Low", 545,550);
textSize(32);text(temp_min, 635,600);
textSize(32);text("Wind " + speed + " mph", 550,105);
textSize(32);text("Humidity " + humidity + "%", 550,175);
textSize(32);text("Pressure " + pressure, 550,245);
textSize(15);text("mb", 775,245);

//int star = 12;
 


}
}
//17 21
else if (mousePressed && mouseX > 720 && mouseY > 720 && (h >= 17) && (h < 21)){
background(255,100,0);
img = loadImage("pressure.png");
image(img, 500, 205, 75, 75 );
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
textSize(32);text(temp_max, 275,250);
textSize(32);text("Todays Low", 550,550);
textSize(32);text(temp_min, 635,600);
textSize(32);text("Wind "  + speed + " mph", 550,105);
textSize(32);text("Humidity  " + humidity + "%", 550,175);
textSize(32);text("Pressure" + pressure, 550,245);
textSize(15);text("mb", 765,245);

}
}
//21 7
else if (mousePressed && mouseX > 720 && mouseY > 720 && (h >= 21) || (h < 7)){
background(71,74,87);

img = loadImage("pressure.png");
image(img, 500, 205, 75, 75 );
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
noStroke();fill(240,196,32);circle(380,340,40);
noStroke();fill(240,196,32);circle(440,480,20);
noStroke();fill(240,196,32);circle(470,430,25);
noStroke();fill(240,196,32);circle(360,440,15);
noStroke();fill(240,196,32);circle(450,360,10);


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
textSize(32);text(temp_max, 275,250);
textSize(32);text("Todays Low", 550,550);
textSize(32);text(temp_min, 635,600);
textSize(32);text("Wind " + speed + " mph", 550,105);
textSize(32);text("Humidity  " + humidity + "%", 550,175);
textSize(32);text("Pressure" + pressure, 550,245);
textSize(15);text("mb", 765,245);
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
textSize(42);text(temp, 450,150); 
textSize(20);text("Todays", 723,665); 
textSize(20);text("Weather", 720,685);
textSize(20);text("Forcast", 720, 705);
textSize(15);text("F", 505,150);
textSize(15);text(description, 380,170);

textSize(32);
text("Todays date is ", 100, 200); 



textSize(32);
text("/", 185, 240); 
textSize(32);
text("/", 235, 240); 

int month = month();
String m = String.valueOf(month);
text(m, 150, 240); 

int day = day();
String s = String.valueOf(day);
text(s, 200, 240);

int year = year();
String y = String.valueOf(year);
text(y, 250, 240);

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
textSize(42);text(temp, 650,150);
textSize(15);text("F", 705,150);
textSize(15);text(description, 560,170);

textSize(20);text("Todays", 723,665); 
textSize(20);text("Weather", 720,685);
textSize(20);text("Forcast", 720, 705);
 
textSize(32);
text("Todays date is ", 100, 200); 

textSize(32);
text("/", 185, 240); 
textSize(32);
text("/", 235, 240); 

int month = month();
String m = String.valueOf(month);
text(m, 150, 240); 

int day = day();
String s = String.valueOf(day);
text(s, 200, 240);

int year = year();
String y = String.valueOf(year);
text(y, 250, 240);

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

noStroke();fill(255, 255, 0);circle(650,200,200);
noStroke();fill(240,196,32);circle(660,285,20);
noStroke();fill(240,196,32);circle(650,250,30);
noStroke();fill(240,196,32);circle(675,150,40);
noStroke();fill(240,196,32);circle(710,220,25);
noStroke();fill(112, 128, 144);circle(750,20,20);
noStroke();fill(71,74,87);circle(550,200,220);
noStroke();fill(255, 255, 0);circle(560,120,12);


//stars
noStroke();fill(255, 255, 255);circle(460,120,3);
noStroke();fill(255, 255, 255);circle(400,220,3);
noStroke();fill(255, 255, 255);circle(100,320,3);
noStroke();fill(255, 255, 255);circle(700,420,3);
noStroke();fill(255, 255, 255);circle(400,520,3);
noStroke();fill(255, 255, 255);circle(200,720,3);
noStroke();fill(255, 255, 255);circle(700,620,3);
noStroke();fill(255, 255, 255);circle(100,120,3);
noStroke();fill(255, 255, 0);

textSize(22);text("Click the mouse once and then hold down", 0,600);
textSize(22);text("the W key to see the 7 day weather report.", 0,625);
textSize(32);text("Currently", 450,100);
textSize(42);text(temp, 500,150);  
textSize(20);text("Todays", 723,665);  
textSize(20);text("Weather", 720,685);
textSize(20);text("Forcast", 720, 705);
textSize(15);text("F", 555,150);  
textSize(15);text(description, 420,170);
textSize(32);
text("Todays date is ", 100, 200); 

textSize(32);
text("/", 185, 240); 
textSize(32);
text("/", 235, 240); 

int month = month();
String m = String.valueOf(month);
text(m, 150, 240); 

int day = day();
String s = String.valueOf(day);
text(s, 200, 240);

int year = year();
String y = String.valueOf(year);
text(y, 250, 240);

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

// Homescreen Background code end *************

  

  
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
