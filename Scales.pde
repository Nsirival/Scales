void setup() {
  size(500, 500);
  dwaw();
}

void dwaw() {
  int g = ((int)(Math.random()*256));
  int b = ((int)(Math.random()*256));
  int g2 = ((int)(Math.random()*256));
  int b2 = ((int)(Math.random()*256));
  boolean shift = true;
  for (int y = 1100; y >-100; y -=20) {
    for (int x = 900; x > -100; x -= 45) {
      if (((x / 45) % 2)== 1 || -((x / 45) % 2) == 1) {
        scales(x, y, shift, g2, b2);
      } else {
        scales(x, y, shift, g, b);
      }
      if (shift == true) {
        shift = false;
      } else {
        shift = true;
      }
    }
  }
}

void scales(int x, int y, boolean shift, int g, int b) {
  if (shift == true) {
    x -= 45;
  }

  beginShape();

  fill(255, g, b);
  curveVertex(x + 10, y + 10);
  curveVertex(x + 10, y + 10);
  curveVertex(x + 20, y + 40);
  curveVertex(x + 40, y + 50);
  curveVertex(x + 50, y + 80);
  curveVertex(x + 60, y + 50);
  curveVertex(x + 80, y + 40);
  curveVertex(x + 90, y + 10);
  curveVertex(x + 90, y + 10);
  endShape();
}
