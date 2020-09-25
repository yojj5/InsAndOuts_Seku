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


float q = 1.1;
int r = 1;
float s;
int k = 20;


void setup(){
size(800, 800); 

String System = "Press the power button at the bottom right to turn on Max";
println(System);
background(0);
img = loadImage("wheathers.jpg");tint(255);
image(img, 200, 225, 400, 400 );
noStroke(); fill(0, 0 , 255); rect(720, 720, 80, 80);
fill(0, 0, 255); textSize(40); text("MAX V2.4", 600, 150); 


}




void mousePressed(){


String instructions = "Hold down the power button for the most updated wheather report";


println(instructions);
 


}

void keyPressed(){
background(0); 
String Bye = "Good bye";
println(Bye);
img = loadImage("wheathers.jpg");tint(255);
image(img, 200, 225, 400, 400 );
fill(0, 0, 255); textSize(40); text("MAX V2.4", 600 , 150); 

}




//int w = 75;



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
noStroke(); fill(255, 0 , 0); rect(720, 720, 80, 80);}

else  //(mouseX < 720 && mouseY < 720)
{noStroke(); fill(0, 0 , 255);rect(720, 720, 80, 80); }


//if(mousePressed && mouseX < 720 && mouseY < 720){

//}


if (mousePressed && mouseX > 720 && mouseY > 720){ 
background(48,139,206);

fill(255);ellipse(100,400,400,160);stroke(255);
fill(255, 130, 0); strokeWeight(10); stroke(255, 40, 0); circle(width/2, height/2, 500);
LeftEye(300,300,60);
RightEye(500,300,60);
fill(255, 40, 0);circle(300,300,60);noStroke();
fill(255, 40, 0);circle(500,300,60);noStroke();

fill(255);ellipse(160,160,60,20);stroke(255);
fill(255);ellipse(120,170,70,20);stroke(255);
fill(255);ellipse(620,270,100,40);stroke(255);
fill(255);ellipse(20,670,100,40);stroke(255);
fill(255);ellipse(600,700,60,10);stroke(255);
fill(255);ellipse(670,660,100,10);stroke(255);
fill(255);ellipse(770,160,70,10);stroke(255);



stroke(255, 100, 0); line(525,250,475,250);
stroke(255, 100, 0); line(275,250,325,250);
stroke(255, 100, 0); line(350,450,450,450);
stroke(255, 100, 0); line(395,375,405,375);

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
frameRate(9);
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
text("UPDATING WHEATHER INFORMATION", 50, 100); 
fill(0, 102, 153);
noFill();stroke(255, 100, 0);strokeWeight(10); rect(310,450,180,40);
fill(0, 0, 255); textSize(40); text("MAX V2.4", 600, 150); 
noStroke(); fill(0, 0 , 255); rect(720, 720, 80, 80);
String[] Wheather = new String[7]; 
Wheather[0] = "Monday - 90 Degrees";
Wheather[1] = "Tuesday - 94 Degrees";
Wheather[2] = "Wednesday - 86 Degrees"; 
Wheather[3] = "Thursday - 78 Degrees"; 
Wheather[4] = "Friday - 88 Degrees";
Wheather[5] = "Saturday - 79 Degrees"; 
Wheather[6] = "Sunday - 96 Degrees";
printArray(Wheather);
 }


else if (!mousePressed)
{fill(0); rect(0,60,800,40);
String instructions = "Hold down the power button for the most updated wheather report";
println(instructions);


}



  
 int z = 0; 
for (int l = 255; l > 0; l -=5){
 fill(0,0,255);stroke(20);rect(z, 10, 40, 40);
 z = z + 20; 


 } 
 int h = 0;
for (int v = 255; v > 0; v -=5) {
 fill(0,0,255);
 stroke(20);
 strokeWeight(20);
circle(h, 15, 10);
 h = h + 30; 
}

   int w = 0;
for (float q = 255; q > 0; q -=7){
 ;fill(0,0,255);stroke(0);rect(w, 760, 40, 40);
 w = w + 20; 

}
 


} 
void LeftEye(int x, int y, int diameter){
noFill(); 
strokeWeight(10); 
stroke(255, 100, 0);
//circle(300,300, 60);
circle(x,  y, diameter);

}

void RightEye(int x, int y, int diameter){
noFill(); 
strokeWeight(10); 
stroke(255, 100, 0); 
circle(x, y, diameter);
}



//void Sun(){
  
//fill(); circle(60, 60, 60); 
//}



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
