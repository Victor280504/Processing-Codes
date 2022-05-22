int l, l2, l4, m1, m2, m3;
void setup() {
  size(600, 600);
  l= height;
  l2 = height/2;
  l4 = height/4;

  noStroke();
  colorMode(HSB, 360, 100, 100);
  m1 = int(random(360));
}
void draw() {

  background(255);
  if (mouseX>l4 && mouseX<l4+l2 && mouseY>l4 && mouseY<l4+l2)
  {
    fill(m1, 70, 90);
    rect(0, 0, l, l);
    fill(m2, 80, 90);
    ellipse(l2, l2, l, l);
    fill(m1, 60, 90);
    quad(0, l2, l2, 0, l, l2, l2, l);
    fill(m3, 70, 90);
    rect(l4, l4, l2, l2);
  } else {
    fill(m1, 0, 0);
    rect(0, 0, l, l);
    fill(m2, 0, 100);
    ellipse(l2, l2, l, l);
    fill(m1, 0, 0);
    quad(0, l2, l2, 0, l, l2, l2, l);
    fill(m3, 0, 100);
    rect(l4, l4, l2, l2);
  }
}
void mouseClicked() {
  m1 = int(random(360));
  m2 = m1 + 120;
  if (m2>360)
    m2 = m2 - 360;
  m3 = m2 + 120;
  if (m3>360)
    m3 = m3 - 360;
  println(m1, m2, m3);

}
