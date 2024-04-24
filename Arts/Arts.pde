int s;
int r, g, b, a;

Button[] bArray;

void setup() {
  //fullScreen();
  size(800,800);
  r=0;
  g=0;
  b=0;
  a=255;
  bArray = new Button[16];
  
  color[] arr = new color[16];
  arr[0] = color(0,255,0);
  arr[1] = color(255,0,0);
  arr[2] = color(0,0,255);
  arr[3] = color(0,255,0);
  
  for (int i = 0; i < 16; i++){
    if (i < 8){
      bArray[i] = new Button(arr[i], new PVector(200+40*i, 20));
    } else {
      bArray[i] = new Button(arr[i], new PVector(200+40*(i-8), 60));
    }
  }
  
  
  
  noStroke();
  background(255);
      fill(200);
  rect(0,0,800,125);

  for (int i = 0; i < 16; i++){
    bArray[i].render();
  }
  
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
  if (mousePressed == true & (mouseY > 125)) {
    fill(r,g,b,a);
    ellipse(mouseX, mouseY, s, s);
  } else {
  }
  
  fill(200);
  rect(0,0,800,125);

  for (int i = 0; i < 16; i++){
    bArray[i].render();
  }

}

void mousePressed(){
 for (int i = 0; i < 16; i++){
    if(bArray[i].collison(mouseX, mouseY)){
     color c = bArray[i].c;
     
       r=(int)red(c);
      g=(int)green(c);
       b=(int)blue(c);
    }
  }
}
