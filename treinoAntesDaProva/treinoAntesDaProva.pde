float l, c, tamX, tamY, x, y, w2, h2, z;
boolean f = false;
int cor1, cor2, cor3, counter;
void setup() {
  size(500, 500);

  //noStroke();
  cor1=255;
  cor2=0;
  imagens();
  w2=width/2;
  h2=height/2;
  tamX= width*1/3.0;
  tamY=height*1/3.0;
  loops();
  inferior();
}
void loops() {
  //1/1
  fill(0);
  rectMode(CORNER);
  rect(0, 0, tamX, tamY);
  fill(255);
  ellipse(tamX/3, tamY/3, tamX/5, tamY/5);
  ellipse(2*tamX/3, tamY/3, tamX/5, tamY/5);
  ellipse(tamX/3, 2*tamY/3, tamX/5, tamY/5);
  ellipse(2*tamX/3, 2*tamY/3, tamX/5, tamY/5);
  //1/2
  fill(255);
  triangle(tamX, 0, width/2, 0, tamX, tamY/2);
  triangle(tamX, tamY/2, width/2, tamY/2, tamX, tamY);
  triangle(tamX*2, 0, width/2, 0, width/2, tamY/2);
  triangle(width/2, tamY, width/2, tamY/2, tamX*2, tamY/2);
  fill(0);
  triangle(tamX, tamY/2, width/2, 0, width/2, tamY/2);
  triangle(tamX*2, 0, width/2, tamY/2, tamX*2, tamY/2);
  triangle(tamX, tamY, width/2, tamY/2, width/2, tamY);
  triangle(tamX*2, tamY/2, width/2, tamY, tamX*2, tamY);

  //1/3
  // Como fazer o fill variar de acordo com o quadrado??
  rectMode(CENTER);
  fill(0);
  rect(2.5*tamX, tamY/2, tamX, tamY);
  fill(255);
  rect(2.5*tamX, tamY/2, 3*tamX/4, 3*tamY/4);
  fill(0);
  rect(2.5*tamX, tamY/2, 2*tamX/4, 2*tamY/4);
  fill(255);
  rect(2.5*tamX, tamY/2, tamX/4, tamY/4);
}
void imagens() {
  pushMatrix();
  translate(width/2, -100);
  rotate(radians(45));
  for (int i=100; i>0; i-=5) {
    fill(cor3);
    rectMode(CENTER);
    rect(width/2, width/2, i*7, i*7);
    if ((i%2)==0) {
      cor3=255;
    } else {
      cor3=0;
    }
  }
  popMatrix();
}
void inferior() {
  rectMode(CORNERS);
  fill(0);
  rect(0, tamY*2, tamX, height);
  fill(255);
  ellipse(tamX/2, 2.5*tamY, width/5, height/5);
  fill(0);
  ellipse(tamX/2, 2.5*tamY, width/9, height/9);
  noStroke();
  fill(255);
  rect(tamX, 2*tamY, 2*tamX, height);
  fill(0);
  rectMode(CORNER);
  rect(tamX+(width/15),2*tamY+(height/15),width/15,height/15);
  rect();
  println(width/15);
}
