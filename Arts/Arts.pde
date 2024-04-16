int s;
int r, g, b, a;

void setup() {
  //fullScreen();
  size(400,400);
  noStroke();
  background(255);
  r=0;
  g=0;
  b=0;
  a=2;
  frameRate(300);
}
void draw() {
  if (keyPressed) {
    if (key == 'o') {
      s++;
    }
  } 
  if (keyPressed) {
    if (key == 'p') {
      s--;
    }
  }if (s<0){s=0;}
println(s);
  if (mousePressed == true) {
    fill(r,g,b,a);
    ellipse(mouseX, mouseY, s, s);
  } else {
  }
}
