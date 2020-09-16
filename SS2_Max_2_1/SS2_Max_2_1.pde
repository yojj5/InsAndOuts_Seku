//Max v2.0 by Seku Burris
// Move the mouse in various directions to see Max's Eye color change.





float q = 1.1;
int r = 1;
float s;


void setup(){
size(800, 800); 
String System = "System off";
println(System);


}



void mousePressed() {

background(0,0,0);



fill(200); strokeWeight(10); stroke(0,0,255); circle(300,300, 60);
fill(200); strokeWeight(10); stroke(0,0,255); circle(500,300, 60);
line(525,250,475,250);
line(275,250,325,250);

line(350,450,450,450);

line(395,375,405,375);





String on = "Hello, I am Max.";
String instructions = "You can change the color of my eyes by moving the mouse from left to right";
String off = "press any key to shut me down.";

println(on);
println(instructions);
println(off); }

void keyPressed(){

background(235,235,235);
 String Bye = "Good bye";
 println(Bye);
 

}



void draw(){

if (mouseX >= width/2){
fill(0,0, q);   circle(300,300, 60);
q++;
}

else if  (mouseX <= width/2)
{ fill(r,0,0); circle(300,300, 60); 
r++;
}



 
//ellipse(mouseX, mouseY, 5, 5);
//if(mouseX >= width/2){  
 //fill(0, 255, 0);
//}
 //else { fill(0, 0, 255);
 //}}

if (mouseX >= width/2){
fill(0,0, q + 1);   circle(500,300, 60);

}

else if  (mouseX <= width/2)
{ fill(r + 1,0,0); circle(500,300, 60); }
 
 s = random(50);

fill(255, 0); ellipse (200, 200, s, 60);

 fill(255, 0); ellipse (200, 200, s, 60);

fill(255, 0); ellipse (600, 200, s, 60);

 fill(255, 0); ellipse (600, 200, s, 60);
}
