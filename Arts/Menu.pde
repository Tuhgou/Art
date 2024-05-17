
boolean showMenu = false;
int menuX, menuY;


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
