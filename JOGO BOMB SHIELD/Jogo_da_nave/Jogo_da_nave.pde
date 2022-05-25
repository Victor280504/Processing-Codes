//LEMBRETE-CRIAR IMAGEM PARA O RESET , COLOCAR ELA DENTRO DE UMA FUNÇÃO E FAZER ELE APARECER SOMENTE QUANDO O USUARIO PERDER.--- reset e voltar-só quando o usuário perder ou pausar;= se perder aparecem na tela , caso seja por pausa ele só aparece lá. 
void intro() {
  rectMode(CORNER);
  fill(255);
  rect(0, 0, width, height);
  image(intro, 0, 0, w, h);
  fill(0);
  textAlign(CENTER);
  textSize(w/20);
  text("Boas vindas ao", width/2, height/6);
  text("Bomb-Shield", width/2, height/4.285);
  /*
  //classico
   rect(w/7.5, h/1.333, w/6, h/8);
   //goku
   rect(w/3.157, h/1.333, w/6, h/8);
   //naruto
   rect(w/2, h/1.333, w/6, h/8);
   //megamen
   rect(w/1.463, h/1.333, w/6, h/8);
   */
  image(escolha, 0, 0, w, h);
  introB=true;
}
void classico() {
  rectMode(CORNER);
  image(auxClassico, 0, 0, w, h);
  image(bombaClassico, 0, b1Y, w, h);
  image(bombaClassico, w/6.45, b2Y, w, h);
  image(bombaClassico, w/2.4, b3Y, w, h);
  image(bombaClassico, w/1.7, b4Y, w, h);
  image(escudoClassico, eX, eY, w, h);
  image(naveClassico, 0, 0, w, h);
  strokeWeight(3);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  stroke(1);
  textAlign(CORNER);
  fill(255);
  textSize(w/25);
  text("PONTUAÇÃO="+pontos, 0, h/9);
  text("ESCUDO="+e, 0, h/1.37);
}
void goku() {
  rectMode(CORNER);
  image(auxGoku, 0, 0, w, h);
  image(bombaGoku, 0, b1Y, w, h);
  image(bombaGoku, w/6.45, b2Y, w, h);
  image(bombaGoku, w/2.4, b3Y, w, h);
  image(bombaGoku, w/1.7, b4Y, w, h);
  image(escudoGoku, eX, eY, w, h);
  image(naveGoku, 0, 0, w, h);
  strokeWeight(3);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  stroke(1);
  textAlign(CORNER);
  fill(255);
  textSize(w/25);
  text("PONTUAÇÃO="+pontos, 0, h/9);
  text("ESCUDO="+e, 0, h/1.37);
}
void megamen() {
  rectMode(CORNER);
  image(auxMegamen, 0, 0, w, h);
  image(bombaMegamen, 0, b1Y, w, h);
  image(bombaMegamen, w/6.45, b2Y, w, h);
  image(bombaMegamen, w/2.4, b3Y, w, h);
  image(bombaMegamen, w/1.7, b4Y, w, h);
  image(escudoMegamen, eX, eY, w, h);
  image(naveMegamen, 0, 0, w, h);
  strokeWeight(3);
  fill(corE, 0, 0, 100);
  rect(0, h/1.6, w, h/8);
  stroke(1);
  textAlign(CORNER);
  fill(255);
  textSize(w/25);
  text("PONTUAÇÃO="+pontos, 0, h/9);
  text("ESCUDO="+e, 0, h/1.37);
}
float b1Y, b2Y, b3Y, b4Y, eY;
float eX, j, jE;

int h;
int w;
//Classico
PImage naveClassico;
PImage escudoClassico;
PImage bombaClassico;
PImage cidadeClassico;
PImage cidadeClassicoDestruida;
PImage auxClassico;
//
//Goku
PImage naveGoku;
PImage escudoGoku;
PImage bombaGoku;
PImage cidadeGoku;
PImage cidadeGokuDestruida;
PImage auxGoku;
//
//Megamen
PImage naveMegamen;
PImage escudoMegamen;
PImage bombaMegamen;
PImage cidadeMegamen;
PImage cidadeMegamenDestruida;
PImage auxMegamen;
//

PImage intro;
PImage escolha;
int pontos;
int e;
int corE=0;
boolean start, classico, megamen, goku, Bclassico, Bmegamen, Bgoku, introB, reset;
boolean end;
boolean auxStart;
int auxR;

//import processing.sound.*;
//SoundFile som;
//SoundFile somEscudo;
//SoundFile somVidaEscudo;
//SoundFile gameOver;

void setup() {
  size(400, 600);
  noStroke();
  h=height;
  w=width;
  intro=loadImage("telaInicial.png");
  escolha=loadImage("escolha.png");
  //som = new SoundFile(this, "fundo.mp3");
  //som.amp(0.5);
  //som.loop();


  //CLASSICO
  naveClassico=loadImage("naveClassico.png");
  bombaClassico=loadImage("bombaClassico.png");
  escudoClassico=loadImage("escudoClassico.png");
  cidadeClassico=loadImage("cidadeClassico.png");
  cidadeClassicoDestruida=loadImage("cidadeClassicoDestruida.png");
  auxClassico=cidadeClassico;
  //
  //GOKU
  naveGoku=loadImage("naveGoku.png");
  bombaGoku=loadImage("bombaGoku.png");
  escudoGoku=loadImage("escudoGoku.png");
  cidadeGoku=loadImage("cidadeGoku.jpg");
  cidadeGokuDestruida=loadImage("cidadeGokuDestruida.png");
  auxGoku=cidadeGoku;
  //
  //MEGAMEN
  naveMegamen=loadImage("naveMegamen.png");
  bombaMegamen=loadImage("bombaMegamen.png");
  escudoMegamen=loadImage("escudoMegamen.png");
  cidadeMegamen=loadImage("cidadeMegamen.png");
  cidadeMegamenDestruida=loadImage("cidadeMegamenDestruida.png");
  auxMegamen=cidadeMegamen;
  //
  //
  pontos=0;
  e=20;
  eX=w/2;
  intro();
  end=false;
}

void draw() {
  introB=false;
  if (auxStart) {
    if (start) {
      logica();
    }
    if (goku) {
      goku();
    } else if (classico) {
      classico();
    } else if (megamen) {
      megamen();
    }
  } else {
    intro();
    if (introB) {
      Bmegamen=true;
      Bgoku=true;
      Bclassico=true;
      reset=false;
    } else {
      Bmegamen=false;
      Bgoku=false;
      Bclassico=false;
    }
    reset();
  }
  //if (mouseButton==LEFT) {
  //  //classico
  //  //som.amp(0.09);


  //if (auxStart==1)
  //  classico();
  //if (auxStart==2)
  //  goku();
  //if (auxStart==3)
  //  megamen();
}
void mousePressed() {

  if (reset) {
    if (mouseX>=0 && mouseX<=50 && mouseY>=0 && mouseY<=50) {
      auxStart=false;
    }
  }
  if (Bclassico) {
    if (mouseX>=w/3.076 && mouseX<=(w/3.076)+(w/6) && mouseY>=h/1.6 && mouseY<=(h/1.6)+(h/8)) {
      start=true;
      auxStart=true;
      classico=true;
      megamen=false;
      goku=false;
      Bmegamen=false;
      Bgoku=false;
      reset=true;
    }
  }
  //vingadores
  //if (mouseX>=w/1.967 && mouseX<=(w/1.967)+(w/6) && mouseY>=h/1.6 && mouseY<=(h/1.6)+(h/8)) {
  //}

  //goku
  if (Bgoku) {
    if (mouseX>=w/4.285 && mouseX<=(w/4.285)+(w/6) && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8)) {
      start=true;
      auxStart=true;
      goku=true;
      megamen=false;
      classico=false;
      Bmegamen=false;
      Bclassico=false;
      reset=true;
    }
  }
  //megamen
  if (Bmegamen) {
    if (mouseX>=w/2.4 && mouseX<=(w/2.4)+(w/6) && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8)) {
      start=true;
      auxStart=true;
      megamen=true;
      goku=false;
      classico=false;
      Bgoku=false;
      Bclassico=false;
      reset=true;
    }
  }
  ////naruto
  //if (mouseX>=w/1.666 && mouseX<=(w/1.666)+(w/6) && mouseY>=h/1.333 && mouseY<=(h/1.333)+(h/8)) {
  //}
}
void keyPressed() {
  logicaBotoes();
}
void logicaBotoes() {
  if (keyCode==32)
    auxR++;
  if (auxR%2==0) {
    start=true;
  } else start=false;

  if (keyCode==ENTER)
    start=true;
  if (keyCode==ENTER) {
    //somEscudo=new SoundFile(this, "somEscudo.mp3");
    //somEscudo.play();

    e--;
    if (e<=15)
      corE=100;
    if (e<=10)
      corE=150;

    if (e<=5)
      corE=200;
    if (e<=2)
      corE=255;

    if (e<=0) {
      b1Y=h;
      b2Y=h;
      b3Y=h;
      b4Y=h;
      eY=h;
      e++;
      end=true;
    }
    if (b1Y>=h/1.775 && b1Y<=h/1.403) {
      b1Y=0;
      pontos++;
    }

    if (b2Y>=h/1.775 && b2Y<=h/1.403) {
      b2Y=0;
      pontos++;
    }
    if ( b3Y>=h/1.775 && b3Y<=h/1.403) {
      b3Y=0;
      pontos++;
    }
    if (b4Y>=h/1.775 && b4Y<=h/1.403) {
      b4Y=0;
      pontos++;
    }
    if (eY>=h/1.775 && eY<=h/1.403) {
      eY=0;
      e+=10;
      corE=0;
      //somVidaEscudo = new SoundFile(this, "somVidaEscudo.mp3");
      //somVidaEscudo.play();
    }
  }
  if (pontos>=30) {
    j+=0.04;
    jE+=0.02;
  }
}
void logica() {
  b1Y+=(random(0, 8))+j;
  b2Y+=(random(0, 6))+j;
  b3Y+=(random(0, 9))+j;
  b4Y+=(random(0, 7))+j;
  eY+=(random(0, 2))+jE;

  if (b1Y>=h) {
    b2Y=h;
    b3Y=h;
    b4Y=h;
    eY=h;
    e=0;
    end=true;
  }
  if (b2Y>=h) {
    b2Y=h;
    b3Y=h;
    b4Y=h;
    eY=h;
    e=0;
    end=true;
  }
  if (b3Y>=h) {
    b1Y=h;
    b2Y=h;
    b4Y=h;
    eY=h;
    e=0;
    end=true;
  }
  if (b4Y>=h) {
    b1Y=h;
    b2Y=h;
    b3Y=h;
    eY=h;
    e=0;
    end=true;
  }
  println(e);
  if (end) {
    auxClassico=cidadeClassicoDestruida;
    auxGoku=cidadeGokuDestruida;
    auxMegamen=cidadeMegamenDestruida;
    //gameOver=new SoundFile(this, "gameOver.mp3");
    //gameOver.play();
  } else {
    auxClassico=cidadeClassico;
    auxGoku=cidadeGoku;
    auxMegamen=cidadeMegamen;
  }
}

void reset() {
  b1Y= 0;
  b2Y= 0; 
  b3Y= 0;
  b4Y= 0;
  eY = 0;
  e=20;
  end=false;
  pontos=0;
}
