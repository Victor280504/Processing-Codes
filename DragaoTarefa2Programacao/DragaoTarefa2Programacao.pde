void setup() {
  size(600, 600);
  cauda();
  asas();
}
void cauda() {

  triangle(40, 270, 40, 290, 80, 320); 
  triangle(40, 290, 10, 270, 20, 300);
  triangle(20, 300, 0, 320, 25, 325);
  triangle(25, 325, 0, 350, 40, 340);
  triangle(40, 340, 30, 370, 70, 340); 
  triangle(40, 290, 20, 300, 80, 320);
  triangle(20, 300, 80, 320, 25, 325);
  triangle(25, 325, 80, 320, 40, 340);
  triangle(40, 340, 70, 340, 80, 320);
  triangle(80, 320, 70, 340, 125, 330);
  triangle(70, 340, 110, 330, 120, 355);
  triangle(110, 330, 120, 355, 125, 330);
  triangle(120, 355, 125, 330, 135, 345);
  triangle(120, 355, 135, 345, 150, 365);
  triangle(125, 330, 150, 365, 180, 345);
  triangle(150, 365, 180, 345, 200, 380);
  triangle(200, 380, 180, 345, 200, 345);
  triangle(200, 345, 230, 325, 200, 365);
  triangle(200, 365, 200, 380, 220, 375);
  triangle(270, 330, 230, 325, 200, 365); 
  triangle(200, 365, 270, 330, 220, 375);
  triangle(270, 330, 220, 375, 305, 365); 
  triangle(230, 325, 270, 330, 290,290);
  triangle(270, 330, 310, 340, 305, 365);
  triangle(270, 330,290,290,310,340);
  triangle(305, 365,310, 340, 330, 370); 
  triangle(330, 370,350, 350, 370, 370);
}

void asas(){
triangle(10,125,110,70,80,120);
triangle(10,125,80,120,110,170);
triangle(80,120,110,70,170,130);
triangle(80,120,110,170,170,130);
triangle(130,180,110,170,170,130);
triangle(110,70,190,80,170,130);
triangle(190,80,200,130,170,130);
triangle(200,130,170,130,200,180);
triangle(200,180,170,130,130,180);
triangle(200,180,200,130,250,184);
triangle(115,240,140,210,150,215);
triangle(160,230,150,215,115,240);
quad(130,180,140,210,150,215,200,180);
triangle(150,215,160,230,200,180);
triangle(200,180,160,230,200,250);
triangle(200,180,200,250,230,250);
triangle(200,250,230,250,210,270);
triangle(250,220,230,250,200,180);
triangle(200,180,250,220,330,190);
triangle(200,130,190,80,255,105);
triangle(255,105,200,130,250,140);
triangle(200,130,250,140,250,184);
triangle(250,140,250,184,330,190);
triangle(255,105,250,140,330,190);
triangle(250,220,330,190,260,270);
triangle(250,220,220,260,260,270);
triangle(330,190,300,260,260,270);
triangle(300,260,260,270,290,290);
triangle(300,260,290,290,330,275);
triangle(300,260,330,190,330,275);

//MAO
quad(400,145,380,190,330,190,320,180);
triangle(280,130,320,180,400,145);
triangle(330,190,365,160,380,170);
triangle(330,190,380,190,395,210);
triangle(370,203,355,215,330,190);
triangle(355,215,330,275,330,190);
triangle(330,275,290,290,310,340);
triangle(330,275,355,215,405,250);
//cabou a mão
quad(405,250,395,210,370,203,355,215);
triangle(400,145,380,190,450,150);
triangle(380,190,395,210,450,150);
triangle(395,210,450,150,405,250);
triangle(450,150,405,250,440,230);
triangle(440,230,450,150,470,195);
triangle(485,175,470,195,450,150);
//MAO
triangle(485,175,470,195,510,170);
triangle(470,195,520,180,490,200);
triangle(490,200,500,220,470,195);
quad(470,195,480,205,470,240,440,230);
triangle(440,230,470,240,465,290);
triangle(465,290,440,230,405,250);
triangle(440,290,465,290,405,250);
}
