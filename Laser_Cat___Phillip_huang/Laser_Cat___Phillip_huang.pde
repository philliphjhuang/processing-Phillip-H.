import ddf.minim.*;
AudioSample sound;
int x = 400;
int y = 236;
int x2 = 759;
int y2 = 153;
int acceleration = 18;
void setup(){
  PImage catPic;
  size(1200,803);
  catPic = loadImage("cat.jpg");
  catPic.resize(1200,803); //
  background(catPic);
  Minim minim = new Minim(this);
  sound = minim.loadSample("pew-pew.mp3");
  sound.trigger();
}
void draw(){
  fill(#00FF00);
  noStroke();
  ellipse(x,y,120,120);
  ellipse(x2,y2,120,120);
}
void keyPressed() {
y+=2*acceleration; 
x+=2*acceleration;
y2+=2*acceleration;
x2+=2*acceleration;
}