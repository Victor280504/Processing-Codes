float u;
int x, y, x2, y2, x4, y4;
void setup() {
  size(600, 600);
  noStroke();
  u=0.166666*2;
  x=width;
  y=height;
  x2 =width/2;
  y2=height/2;
  x4=width/4;
  y4 = height/4;
  loops();
}
void loops() {
  for (int i=0; i<x*2; i=i+2*x/6) {
    for (int j=0; j<x*2; j=j+2*x/6) {
      estrutura1( u, i, j);
    }
  }
}
void estrutura1(float u, float i, float j) {
  pushMatrix();
    translate(i, j);
    scale(u);
    fill(255);
    fill(255);
    triangle(0, 0, x2, y2, 0, y2);
    fill(0);
    arc(x4, y4, width*4/12, height*4/12, radians(45), radians(225));
    triangle(0, 0, x2, y2, x2, 0);
    fill(255);
    arc(x4, y4, width*1/6, height*1/6, radians(45), radians(225));
    arc(x4, y4, width*4/12, height*4/12, radians(225), radians(405));
    fill(0);
    arc(x4, y4, width*1/6, height*1/6, radians(225), radians(405));
  
    fill(255);
    triangle(x2, 0, x2, y2, width, 0);
    fill(0);
    arc(3*x4, y4, width*4/12, height*4/12, radians(135), radians(315));
    triangle(x2, y2, width, 0, width, y2);
    fill(255);
    arc(3*x4, y4, width*1/6, height*1/6, radians(135), radians(315));
    arc(3*x4, y4, width*4/12, height*4/12, radians(315), radians(495));
    fill(0);
    arc(3*x4, y4, width*1/6, height*1/6, radians(315), radians(495));
  
    fill(255);
    triangle(0, height, x2, height, x2, y2);
  
    fill(0);
    triangle(0, y2, 0, height, x2, y2);
    fill(255);
    arc(x4, 3*y4, width*4/12, height*4/12, radians(135), radians(315));
    fill(0);
    arc(x4, 3*y4, width*1/6, height*1/6, radians(135), radians(315));
    fill(0);
    arc(x4, 3*y4, width*4/12, height*4/12, radians(315), radians(495));
    fill(255);
    arc(x4, 3*y4, width*1/6, height*1/6, radians(315), radians(495));
  
  
    fill(255);
    triangle(x2, y2, width, y2, width, height);
    fill(0);
    triangle(x2, y2, x2, height, width, height);
    fill(255);
    arc(3*x4, 3*y4, width*4/12, height*4/12, radians(45), radians(225));
    fill(0);
    arc(3*x4, 3*y4, width*4/12, height*4/12, radians(225), radians(405));
    fill(0);
    arc(3*x4, 3*y4, width*1/6, height*1/6, radians(45), radians(225));
    fill(255);
    arc(3*x4, 3*y4, width*1/6, height*1/6, radians(225), radians(405));
  popMatrix();
}
