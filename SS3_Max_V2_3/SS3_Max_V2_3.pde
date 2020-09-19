//Max v2.0 by Seku Burris
// Move the mouse in various directions to see Max's Eye color change.

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


float q = 1.1;
int r = 1;
float s;
int k = 20;


void setup(){
size(800, 800); 
String System = "Press the power button at the bottom right to turn on Max";
println(System);
background(0);
img = loadImage("news.jpg");tint(255,128);
image(img, 200, 225, 400, 400 );
noStroke(); fill(0, 0 , 255); rect(720, 720, 80, 80);

}




void mousePressed(){

String on = "Hello, I am Max.";
String instructions = "Hold down the power button to seach for the latest news in your area";
String off = "press any key to shut me down.";
println(on);
println(instructions);
println(off); 


}

void keyPressed(){
background(0); 
String Bye = "Good bye";
println(Bye);
img = loadImage("news.jpg");tint(255,128);
image(img, 200, 225, 400, 400 );


}








void draw(){


//for (float q = 1.0; q < width/6; q *= 1.1){
//rect(0, q, q, q*2);
//fill(200, 0, 0);
//}
//x = x +10;/(mousePress

  //while (mouseX > 800) {
//ellipse(40, 40 ,40 ,40);}

//ellipse(mouseX, mouseY, 5, 5);
//if(mouseX >= width/2){  
 //fill(0, 255, 0);
//}
 //else { fill(0, 0, 255);
 //}}



if (mouseX > 720 && mouseY > 720){
noStroke(); fill(0, 0 , 255); rect(720, 720, 80, 80);}

else  //(mouseX < 720 && mouseY < 720)
{noStroke(); fill(255, 0 , 0);rect(720, 720, 80, 80); }

if (mousePressed && mouseX > 720 && mouseY > 720){ 
background(0);
noFill(); strokeWeight(10); stroke(0,0,255); circle(300,300, 60);
noFill(); strokeWeight(10); stroke(0,0,255); circle(500,300, 60);
line(525,250,475,250);
line(275,250,325,250);
line(350,450,450,450);
line(395,375,405,375);
noFill(); strokeWeight(10); stroke(0,0,255); circle(width/2, height/2, 500);
a = random(255);
b = random(255);
c = random(255);
d = random(255);
x1 = random(501,130);
y1= random(301,80);
x2 = random(301,130);
y2 = random(301,80);
x3 = random(width);
y3 = random(height);
diam = random(55);
frameRate(8);
noStroke();
fill(a,b,c,255);
ellipse(x1, y1, diam, diam);
ellipse(x2, y2, diam, diam);
x3 = random(width);
y3 = random(height);
diam = random(55);
frameRate(8);
noStroke();
fill(a,b,c,255);
ellipse(x3, y3, diam, diam);
textSize(40);
text("SEARCHING", 290, 100); 
fill(0, 102, 153);
noFill();strokeWeight(10); stroke(0,0,255); rect(310,450,180,40);

 





noStroke(); fill(0, 0 , 255); rect(720, 720, 80, 80);}


else if (!mousePressed)
{fill(0); rect(200,70,400,40);}


  int z = 0;
for (int l = 255; l > 0; l -=5){
 fill(255,0,0);stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 
 textSize(40);
text("MAX V2.2", 600, 150); 
fill(255, 0, 0);
 } 
 int h = 0;
for (int v = 255; v > 0; v -=5) {
 fill(255,0,0);
 stroke(20);
 strokeWeight(20);
circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
 fill(0,0,255);stroke(20);rect(w, 760, 40, 40);
 w = w + 20; 
 textSize(40);
text("MAX V2.2", 600, 150); 
fill(255, 0, 0);
 
 
}
 


//int x = 0;
//for (int c = 255; c > 0; c -=15)
//fill(c);
//rect(x, height/2, 10, 10);
//x = x +10;
//(mousePres









//(mousePressed && mouseX <= 720 && mouseY <= 720)

//noStroke();
//fill(a,b,c,d);
//ellipse(x1, y1, diam, diam);
//ellipse(x2, y2, diam, diam);}
//fill(0,255 ,0); ellipse(500,300, 1.6,  1.6); strokeWeight(10); stroke(255,0,0); 
//if (mouseX > width/2){ 
//r = r + 20;}
//fill(255, 0); ellipse (200, 200, s, 60);
//fill(255, 0); ellipse (200, 200, s, 60);
//fill(255, 0); ellipse (600, 200, s, 60);
//fill(255, 0); ellipse (600, 200, s, 60);



//if (mouseX >= width/2){
//fill(0,0, q);   circle(300,300, 60);
//q++;
//}

//else if  (mouseX <= width/2)
//{ fill(r,0,0); circle(300,300, 60); 
//r++;}

//if (mouseX >= width/2){
//fill(0,0, q + 1);   circle(500,300, 60);

//}

//else if  (mouseX <= width/2)
//{ fill(r + 1,0,0); circle(500,300, 60); }



}
