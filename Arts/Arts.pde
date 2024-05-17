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
arr[0] = color(0,0,0);         // Sort
arr[1] = color(255,255,255);   // Hvid
arr[2] = color(255,0,0);       // Rød
arr[3] = color(0,255,0);       // Grøn
arr[4] = color(0,0,255);       // Blå
arr[5] = color(255,255,0);     // Gul
arr[6] = color(255,0,255);     // Magenta
arr[7] = color(0,255,255);     // Cyan
arr[8] = color(128,0,0);       // Mørkebrun
arr[9] = color(128,128,0);     // Oliven
arr[10] = color(0,128,0);      // Mørkegrøn
arr[11] = color(0,128,128);    // Teal
arr[12] = color(0,0,128);      // Mørkeblå
arr[13] = color(128,0,128);    // Lilla
arr[14] = color(128,128,128);  // Grå
arr[15] = color(192,192,192);  // Lysegrå
  
  for (int i = 0; i < 16; i++){
    if (i < 8){
      bArray[i] = new Button(arr[i], new PVector(200+40*i, 20));
    } else {
      bArray[i] = new Button(arr[i], new PVector(200+40*(i-8), 60));
    }
  }
  
  
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
void keyPressed() {
  if (key == 'q') {
    a += 10; 
    if (a > 255) { 
      a = 255;
    }
  } else if (key == 'w') {
    a -= 10; 
    if (a < 0) {
      a = 0;
    }
  }
}
void mousePressed(){
 for (int i = 0; i < 16; i++){
    if(bArray[i].collision(mouseX, mouseY)){
     color c = bArray[i].c;
       r=(int)red(c);
      g=(int)green(c);
       b=(int)blue(c);
    }
  }
}
