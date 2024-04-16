int s;
int r, g, b, a;
boolean showMenu = false;
int menuX, menuY;

void setup() {
  size(400, 400);
  noStroke();
  background(255);
}

void draw() {
  if (keyPressed) {
    if (key == 'o') {
      s++;
    } else if (key == 'p') {
      s--;
    }
  }
  s = max(s, 0); // Ensure 's' does not go below 0
  println(s);

  if (mousePressed && mouseButton == LEFT) {
    fill(r, g, b, a);
    ellipse(mouseX, mouseY, s, s);
  }

  if (showMenu) {
    drawPopupMenu(menuX, menuY);
  }
}

void mouseClicked() {
  if (mouseButton == RIGHT) {
    showMenu = !showMenu;
    menuX = mouseX;
    menuY = mouseY;
  }
}

void drawPopupMenu(int x, int y) {
  fill(240);
  rect(x, y, 100, 100); // simple square menu
  fill(0);
  text("Option 1", x + 10, y + 25);
  text("Option 2", x + 10, y + 50);
  text("Option 3", x + 10, y + 75);
}
