int t, l, c;
float x, y ; 
void setup() {
  size(600, 600);
  background(0);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  t=width/10;
}
void draw() {
}
void keyPressed() {
  if ((keyCode==UP)) {
    circuloCromatico((t*l)-30, (t*c)+30);
    if (l==10) {
      l=0;
      c++;
      ;
    }
    l++;
  }
}
void circuloCromatico(float j, float k) {
  pushMatrix();
  translate(j, k);
  scale(0.147);
  for (float ang = 0; ang<radians(360); ang = ang+0.001) {
    x = cos(ang)*200;
    y = sin(ang)*200;
    stroke(ang*57.3, 100, 100);
    //println(ang); 360/6.2827272 ≅ 57.3
    line(0, 0, x, y);
  }
  popMatrix();
}
