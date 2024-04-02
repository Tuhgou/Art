int s;

void setup() {
  //fullScreen();
  size(400,400);
  noStroke();
  background(255);
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
  }if (s<-1){s=1;}
println(s);
  if (mousePressed == true) {
    fill(0);
    ellipse(mouseX, mouseY, s, s);
  } else {
  }
}
