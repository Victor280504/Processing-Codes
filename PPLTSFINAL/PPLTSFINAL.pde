int w, h, w2, h2, w4, h4, w6, h6;//variáveis de tamanho
PFont cambria, sanSerif; // variaveis de fontes
color corBotaoR, corBotaoP, corFontR, corFontP, corBotao1R, corBotao1P, corFont1R, corFont1P;//variaveis de cor 
boolean jogar, regras, menuEscolha, menuMostrador, reseta, logica; //booleans 
PImage default1, vs, voltarP, voltarR, botaoResetarR, botaoResetarP, imgPe, imgPa, imgTe, imgLa, imgSp, imgPeR, imgPaR, imgTeR, imgLaR, imgSpR, imgResultJog, imgResultPC, fightP, fightR, voltarResultP, voltarResultR;//variaveis de imagens
PImage imgPeC, imgPaC, imgTeC, imgLaC, imgSpC, resultado, ganhou, empatou, perdeu;
int pedra, papel, tesoura, lagarto, spock;//variaveis referentes a logica
int escolhaJogador;
int escolhaComputador = 0;
String escolhaC, escolhaJ, pE, pA, tE, lA, sP, ganhar, perder, empatar;

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100, 100);
  //variáveis de tamanho
  w=width; 
  h=height;
  w2=width/2; 
  h2=height/2;
  w4=width/4; 
  h4=height/4;
  w6=width/6; 
  h6=height/6;
  //corBotoes
  corBotaoR=color(180, 100, 50, 52.9);
  corBotaoP=color(180, 100, 24, 52.9);
  corFontR=color(192, 72, 31);
  corFontP=color(192, 0, 100);
  corBotao1R=color(180, 100, 50, 52.9);
  corBotao1P=color(180, 100, 24, 52.9);
  corFont1R=color(192, 72, 31);
  corFont1P=color(192, 0, 100);
  //fontes
  cambria= createFont("Cambria", 0.071*width);
  sanSerif= createFont("SansSerif", 0.063*width);
  //imagens
  botaoResetarP=loadImage("resetPressed.png");
  botaoResetarR=loadImage("resetReleased.png");
  voltarP=loadImage("voltarPressed.png");
  voltarR=loadImage("voltarReleased.png");
  voltarResultP=loadImage("voltarResultP.png");
  voltarResultR=loadImage("voltarResultR.png");
  fightP=loadImage("FightP.png");
  fightR=loadImage("FightR.png");
  vs=loadImage("VS.png");
  imgPe=loadImage("Pedra.png");
  imgPa=loadImage("Papel.png");
  imgTe=loadImage("Tesoura.png");
  imgLa=loadImage("Lagarto.png");
  imgSp=loadImage("Spock.png");
  //imagens exibidas no resultado do jogador
  imgPeR=loadImage("PedraR.png");
  imgPaR=loadImage("PapelR.png");
  imgTeR=loadImage("TesouraR.png");
  imgLaR=loadImage("LagartoR.png");
  imgSpR=loadImage("SpockR.png");
  default1=loadImage("default.png");
  //imagens exibidas no resultado do computador
  imgPeC=loadImage("pedraC.png");
  imgPaC=loadImage("papelC.png");
  imgTeC=loadImage("tesouraC.png");
  imgLaC=loadImage("lagartoC.png");
  imgSpC=loadImage("spockC.png");
  resultado=loadImage("resultado.png");
  ganhou= loadImage("GANHOU.png");
  empatou=loadImage("EMPATOU.png");
  perdeu=loadImage("PERDEU.png");
  //Strings
  pE= "PEDRA";
  pA= "PAPEL";
  tE= "TESOURA";
  lA="LAGARTO";
  sP="SPOCK";
  ganhar="VOCÊ GANHOU";
  perder="VOCÊ PERDEU";
  empatar="EMPATOU";
  //logica
  pedra=1;
  papel=2;
  tesoura=3;
  lagarto=4;
  spock=5;
}


void draw() {

  if (jogar) {
    if (menuEscolha) {
      menuEscolha();
    }  
    if (escolhaJogador!=0) {
      menuEscolha=false;
      menuMostrador=true;
    } else {
      menuMostrador=false;
      menuEscolha=true;
    }
    if (menuMostrador) {
      mostrador();
      jogarLogica();
    }
  } else if (regras) {
    regras();
  } else {
    menuPrincipal();
  }
}


void mousePressed() {
  if (mouseX>=w4 && mouseX<=w4*3 && mouseY>=h6*4 && mouseY<=h6*5) {//regras
    regras=true;
  }
  if (regras) {
    if (mouseX>=w4*2.8 && mouseX<=w*0.936 && mouseY>=h6/2 && mouseY<=height*0.216) {//voltar
      regras=false;
    }
  }
  if (mouseX>=w4 && mouseX<=3*w4 && mouseY>=0.416*h && mouseY<=0.583*h) {//jogar
    jogar=true;
  }
  if (menuEscolha) {
    posicoesEscolha();
  }
  if (menuMostrador) {
    if (mouseX>=0.4*w && mouseX<=0.6*w && mouseY>=0.025*h && mouseY<=0.1383*h) {  //fight
      escolhaComputador=int(random(1, 5.9));
      fill(360, 0, 50);
      circle(4*w/5, h6*2, 200);
      rectMode(CENTER);
      rect( w2, h6*2.7, 0.2*w, 0.0416*h);
      rectMode(CORNER);
    }
    if (mouseX>=0.4333*w && mouseX<=0.5666*w && mouseY>=0.7666*h && mouseY<=0.9*h) {//resetar
      menuEscolha=true;
      menuMostrador=false;
      escolhaJogador=0;
      escolhaComputador=0;
    }
    if (mouseX>=0.7166*w && mouseX<=0.95*w && mouseY>=0.025*h && mouseY<=0.1383*h) {//voltar
      menuMostrador=false;
      jogar=false;
      escolhaJogador=0;
      menuEscolha=false;
      regras=false;
      escolhaComputador=0;
    }
  }
  //println("menuMostrador"+menuMostrador);
  //println("menuEscolha"+menuEscolha);
  //println("menuJogar"+jogar);
  //println(mouseX, mouseY);
  //println("Escolha Jogardor = "+escolhaJogador);
}
//Parte Gráfica
void menuPrincipal() {
  noStroke();
  fill(168, 50, 100, 52.9);
  rect(0, 0, w, h);
  fill(180, 100, 50);
  textFont(cambria);
  textAlign(CENTER);
  text("Pedra, Papel, Tesoura", w2, h2/3);
  text("Lagarto, Spock", w2, h4);

  fill(corBotaoR);
  rect(w4, 2.5*h6, 2*w4, h6, w6);
  fill(corBotao1R);
  rect(w4, 4*h6, 2*w4, h6, w6);
  fill(corFontR);
  textFont(sanSerif);
  text("JOGAR", w2, h6*3.15);
  fill(corFont1R);
  text("REGRAS", w2, h6*4.65);
  if (mouseX>=w4 && mouseX<=w4*3 && mouseY>=h6*2.5 && mouseY<=h6*3.5) {
    corBotaoR= corBotaoP;
    corFontR= corFontP;
  } else {
    corBotaoR=color(180, 100, 50, 52.9);
    corBotaoP=color(180, 100, 24, 52.9);
    corFontR=color(192, 72, 31);
    corFontP=color(192, 0, 100);
  }
  if (mouseX>=w4 && mouseX<=w4*3 && mouseY>=h6*4 && mouseY<=h6*5) {
    corBotao1R= corBotao1P;
    corFont1R= corFont1P;
  } else {
    corBotao1R=color(180, 100, 50, 52.9);
    corBotao1P=color(180, 100, 24, 52.9);
    corFont1R=color(192, 72, 31);
    corFont1P=color(192, 0, 100);
  }
}
void regras() {
  noStroke();
  fill(168, 50, 100, 52.9);
  rect(0, 0, w, h);
  fill(180, 100, 50);
  textFont(cambria);
  textAlign(CENTER);
  text("REGRAS", w2, h6);
  text("Boa sorte :p", w2, h6*5);
  textAlign(LEFT);
  textSize(0.0333*width);
  text("As regras do jogo são simples!", w/10, 1.5*h6);
  text("Pedra, papel e tesoura não convencionais =)", w/10, 1.75*h6);
  text("Você tem mais duas possibilidades de escolha e", w/10, 2*h6);
  text("isso diminui a probabilidade de empate. ^^", w/10, 2.25*h6);
  //opcoes
  text("PEDRA", w/10, 3.25*h6);
  text("PAPEL", w/10, 3.5*h6);
  text("TESOURA", w/10, 3.75*h6);
  text("LAGARTO", w/10, 4*h6);
  text("SPOCK", w/10, 4.25*h6);
  //fraquezas
  textAlign(RIGHT);
  text("PAPEL E SPOCK", 3*w/4, 3.25*h6);
  text("TESOURA E LAGARTO", 3*w/4, 3.5*h6);
  text("SPOCK E PEDRA", 3*w/4, 3.75*h6);
  text("TESOURA E PEDRA", 3*w/4, 4*h6);
  text("LAGARTO E PAPEL", 3*w/4, 4.25*h6);
  textAlign(CENTER);
  textFont(sanSerif);
  textSize(0.0333*width);
  text("ESCOLHAS", 2*w/10, 2.75*h6);
  text("FRAQUEZAS", 2.5*w4, 2.75*h6);
  imagensOpcoesRegras();
}
void jogarLogica() {
  reusult1();
  reusult2();
  reusult3();
  reusult4();
  reusult5();
}
void menuEscolha() {
  background(24, 33, 100);
  imageMode(CENTER);
  image(imgPe, w4/1.1, h6);
  image(imgPa, 3.1*w4, h6);
  image(imgTe, w4/1.1, 5*h6);
  image(imgLa, 3.1*w4, 5*h6);
  image(imgSp, w2, h2);
  textFont(cambria);
  textSize(30);
  text("ESCOLHA", w6, h2);
  text("SUA", w2, h6);
  text("OPÇÃO", 5*w6, h2);
  menuEscolha=true;
}
void posicoesEscolha() {
  //Pedra
  if (mouseX>=0.066*w && mouseX<=0.3833*w && mouseY>=0.0116*h && mouseY<=0.321*h) {
    escolhaJogador=pedra;
    imgResultJog= imgPe;
    escolhaJ=pE;
  } else if (mouseX>=0.616*w && mouseX<=0.933*w && mouseY>=0.0116*h && mouseY<=0.321*h) {  //Papel
    escolhaJogador=papel;
    imgResultJog= imgPa;
    escolhaJ=pA;
  } else if (mouseX>=0.066*w && mouseX<=0.3833*w && mouseY>=0.675*h && mouseY<=0.988*h) { //Tesoura
    escolhaJogador=tesoura;
    imgResultJog= imgTe;
    escolhaJ=tE;
  } else if (mouseX>=0.616*w && mouseX<=0.933*w && mouseY>=0.675*h && mouseY<=0.988*h) {  //Lagarto
    escolhaJogador=lagarto;
    imgResultJog= imgLa;
    escolhaJ=lA;
  } else if (mouseX>=0.341*w && mouseX<=0.6583*w && mouseY>=0.333*h && mouseY<=0.65*h) {  //Spock
    escolhaJogador=spock;
    imgResultJog= imgSp;
    escolhaJ=sP;
  }
}
void imagensOpcoesRegras() {
  imageMode(CORNER);
  if (mouseX>=w4*2.8 && mouseX<=w*0.936 && mouseY>=h6/2 && mouseY<=height*0.216) {
    image(voltarP, w4*2.8, h6/2);
  } else {
    image(voltarR, w4*2.8, h6/2);
  }
}
void mostrador() {
  background(0, 33, 100);
  image(imgResultJog, w/5, h6*2);
  if (mouseX>=0.4*w && mouseX<=0.6*w && mouseY>=0.025*h && mouseY<=0.1383*h) {
    image(fightP, w/2, h6/2);
  } else {
    image(fightR, w/2, h6/2);
  }
  if (mouseX>=0.7166*w && mouseX<=0.95*w && mouseY>=0.025*h && mouseY<=0.1383*h) {
    image(voltarResultP, w6*5, h6/2);
  } else {
    image(voltarResultR, w6*5, h6/2);
  }
  image(vs, w/2, h6*2);
  escolhaComputador();
  imageMode(CENTER);
  if (mouseX>=0.4333*w && mouseX<=0.5666*w && mouseY>=0.7666*h && mouseY<=0.9*h) {
    image(botaoResetarP, w2, h6*5);
  } else {
    image(botaoResetarR, w2, h6*5);
  }
  fill(192, 72, 31);
  image(resultado, w2, h6*3.5);
  textFont(cambria);
  textSize(30);
  text(escolhaJ, 1.2*w6, h2*1.2);
  text(escolhaC, 4*w/5, h2*1.2);
}
void escolhaComputador() {
  switch(escolhaComputador) {
  case 1:
    imgResultPC=imgPeC;
    escolhaC=pE;
    break;
  case 2:
    imgResultPC=imgPaC;
    escolhaC=pA;
    break;
  case 3:
    imgResultPC=imgTeC;
    escolhaC=tE;
    break;
  case 4:
    imgResultPC=imgLaC;
    escolhaC=lA;
    break;
  case 5:
    imgResultPC=imgSpC;
    escolhaC=sP;
    break;
  default:
    imgResultPC=default1;
    escolhaC="SORTEIE";
    break;
  }
  image(imgResultPC, 4*w/5, h6*2);
}
void reusult1() {
  if (escolhaJogador==1 && escolhaComputador==1) {
    text("EMPATOU", w2, h6*2.75);
    text("ANULA", w2, h6*3.6);
    imagemEmpatou();
  } else if (escolhaJogador==1 && escolhaComputador==2) {
    text("PERDEU", w2, h6*2.75);
    text("ENVOLVIDA", w2, h6*3.5);
    text("PELO", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==1 && escolhaComputador==3) {
    text("GANHOU", w2, h6*2.75);
    text("QUEBRA", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==1 && escolhaComputador==4) {
    text("GANHOU", w2, h6*2.75);
    text("ESMAGA", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==1 && escolhaComputador==5) {
    text("PERDEU", w2, h6*2.75);
    text("VAPORIZADA", w2, h6*3.5);
    text("PELO", w2, h6*3.75);
    imagemPerdeu();
  }
}
void reusult2() {
  if (escolhaJogador==2 && escolhaComputador==1) {
    text("GANHOU", w2, h6*2.75);
    text("EVNOLVE", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==2 && escolhaComputador==2) {
    text("EMPATOU", w2, h6*2.75);
    text("ANULA", w2, h6*3.6);
    imagemEmpatou();
  } else if (escolhaJogador==2 && escolhaComputador==3) {
    text("PERDEU", w2, h6*2.75);
    text("CORTADO", w2, h6*3.5);
    text("PELA", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==2 && escolhaComputador==4) {
    text("PERDEU", w2, h6*2.75);
    text("COMIDO", w2, h6*3.5);
    text("PELO", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==2 && escolhaComputador==5) {
    text("GANHOU", w2, h6*2.75);
    text("REFUTA", w2, h6*3.6);
    imagemGanhou();
  }
}
void reusult3() {
  if (escolhaJogador==3 && escolhaComputador==1) {
    text("PERDEU", w2, h6*2.75);
    text("QUEBRADA", w2, h6*3.5);
    text("PELA", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==3 && escolhaComputador==2) {
    text("GANHOU", w2, h6*2.75);
    text("CORTA", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==3 && escolhaComputador==3) {
    text("EMPATOU", w2, h6*2.75);
    text("ANULA", w2, h6*3.6);
    imagemEmpatou();
  } else if (escolhaJogador==3 && escolhaComputador==4) {
    text("GANHOU", w2, h6*2.75);
    text("CORTA", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==3 && escolhaComputador==5) {
    text("PERDEU", w2, h6*2.75);
    text("DERRETIDA", w2, h6*3.5);
    text("PELO", w2, h6*3.75);
    imagemPerdeu();
  }
}
void reusult4() {
  if (escolhaJogador==4 && escolhaComputador==1) {
    text("PERDEU", w2, h6*2.75);
    text("ESMAGADO", w2, h6*3.5);
    text("PELA", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==4 && escolhaComputador==2) {
    text("GANHOU", w2, h6*2.75);
    text("COME", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==4 && escolhaComputador==3) {
    text("PERDEU", w2, h6*2.75);
    text("CORTADO", w2, h6*3.5);
    text("PELA", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==4 && escolhaComputador==4) {
    text("EMPATOU", w2, h6*2.75);
    text("ANULA", w2, h6*3.6);
    imagemEmpatou();
  } else if (escolhaJogador==4 && escolhaComputador==5) {
    text("GANHOU", w2, h6*2.75);
    text("ENVENENA", w2, h6*3.6);
    imagemGanhou();
  }
}
void reusult5() {
  if (escolhaJogador==5 && escolhaComputador==1) {
    text("GANHOU", w2, h6*2.75);
    text("VAPORIZA", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==5 && escolhaComputador==2) {
    text("PERDEU", w2, h6*2.75);
    text("REFUTADO", w2, h6*3.5);
    text("PELO", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==5 && escolhaComputador==3) {
    text("GANHOU", w2, h6*2.75);
    text("DERRETE", w2, h6*3.6);
    imagemGanhou();
  } else if (escolhaJogador==5 && escolhaComputador==4) {
    text("PERDEU", w2, h6*2.75);
    text("ENVENENADO", w2, h6*3.5);
    text("PELO", w2, h6*3.75);
    imagemPerdeu();
  } else if (escolhaJogador==5 && escolhaComputador==5) {
    text("EMPATOU", w2, h6*2.75);
    text("ANULA", w2, h6*3.6);
    imagemEmpatou();
  }
}
void imagemGanhou() {
  image(ganhou, w4, 5*h6);
  image(ganhou, 3*w4, 5*h6);
}
void imagemPerdeu() {
  image(perdeu, w4, 5*h6);
  image(perdeu, 3*w4, 5*h6);
}
void imagemEmpatou() {
  image(empatou, w4, 5*h6);
  image(empatou, 3*w4, 5*h6);
}
