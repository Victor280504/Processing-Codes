int p=38;
void setup() {
  size(600, 600);
  background(0);
  stroke(255);
  loopas();
}
void loopas() {
  for (int i = 0; i <700; i=i+40) {
    for (int j= 0; j<700; j=j+80) {
      estrutura1(i, j);
      for (int l=0; l <700; l=l+120) {
        estrutura2(l-40, j);
        estrutura2(l+20, j-40);
      }
    }
  }
}

void estrutura1(int x, int y) {
    fill(255,0,0);
  pushMatrix();

  translate(x, y);
  scale(0.5);
  line(0, 30, 40, 0);
  line(40, 0, 80, 30);
  //line(80, 30, 80, 80);
  line(80, 80, 40, 110);
  line(40, 110, 0, 80);
  line(0, 80, 0, 30);
  line(40, 110, 40, 160);
  popMatrix();
}
void estrutura2(int x, int y) {
  pushMatrix();
  translate(x, y);
  scale(0.5);
  line(40, 55, 80, 80);
  line(80, 80, 80, 130);
  line(80, 130, 40, 160);
  line(40, 160, 0, 130);
  line(0, 130, 0, 80);
  line(0, 80, 40, 55);
  line(40, 110, 40, 160);
  popMatrix();
}
