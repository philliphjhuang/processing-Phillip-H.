int xspeed = 10;
int yspeed = 10;
int x = 600;
int y = 400;
void setup() {
size(1200,800);

  
  
}

void draw() {
  background(#F200FF);
  ellipse(x,y,50,50);
  fill(#00FFFF);
  stroke(#FFFF00);
 x+= xspeed;
  if(x == 0) {
 xspeed=-xspeed;
}
 y+=yspeed;
 if(x == height) {
   xspeed=-xspeed;
}
if(y <= 0) {
 yspeed=-yspeed; 
}
if(y >= width) {
  yspeed=-yspeed;
}
}