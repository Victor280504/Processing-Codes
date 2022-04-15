//teste de calculadora
//Para usar , primeiramente clique no primeiro valor da operação , depois aperte no + , em seguida aperte no 
//segundo valor da operação , e por fim , na operação desejada.(CALCULADORA LIMITADA Pq TO CANSADO DE TENTAR CONCILIAR A LÓGICA E O BRUTEFORCE)


int contador;
int resultado;
int valor;
int valor1;
int valor2;
void setup() {
  size(200, 300);
}
void draw() {
  background(200);
  gradeBotoes();
  mostrador();
  displayNumbers(contador);
}
void mostrador() {
  fill(230);
  rect(20, 20, 160, 50);
}

void gradeBotoes() {
  for (int i = 0; i<200; i=i+50) {
    for (int j = 0; j<300; j=j+50) {
      botoes(i, j);
    }
  }
  desenhoClear(52, 257);
  subtracaoValue();
  somaValue();
  multiplicaValue();
  divideValue();
  //igualdadeValue();//nao está funcionando ainda pq enfim .
  numeros();
}


void botoes(int x, int y) {
  pushMatrix();
  translate(x, y);
  fill(180);
  ellipse(25, 125, 40, 40);
  popMatrix();
}
void displayNumbers(int x) {
  fill(30);
  textSize(40);
  textAlign(CENTER);
  text(x, 100, 60);
}
void numeros() {
  fill(30);
  textSize(20);
  textAlign(CENTER);
  text(0, 25, 275+10);
  text(9, 25, 125+10);
  text(8, 75, 125+10);
  text(7, 125, 125+10);
  text(6, 25, 175+10);
  text(5, 75, 175+10);
  text(4, 125, 175+10);
  text(3, 25, 225+10);
  text(2, 75, 225+10);
  text(1, 125, 225+10);
}
void desenhoClear(int x, int y) {
  pushMatrix();
  translate(x, y);
  scale(0.60);
  noFill();
  line(20, 20, 50, 40);
  line(20, 40, 50, 20);
  rect(20, 20, 30, 20);
  triangle(50, 20, 50, 40, 65, 30);
  popMatrix();
}
void subtracaoValue() {
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("-", 175, 180);
}
void somaValue() {
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("+", 175, 130);
}
void multiplicaValue() {
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("x", 175, 230);
}
void divideValue() {
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("÷", 175, 280);
}
void igualdadeValue() {
  fill(0);
  textSize(20);
  textAlign(CENTER);
  text("=", 125, 280);
}
void mousePressed() {
  //valor1();
  //contador = valor1;
  operacoes();
  valor2();
  contador = valor2;
  resultado();
}
//void valor1() {
//  if (mouseX > 0 && mouseX < 50 && mouseY>100 && mouseY <150) {
//    valor1=9;
//  }
//  if (mouseX > 50 && mouseX < 100 && mouseY>100 && mouseY <150 ) {
//    valor1=8;
//  }
//  if (mouseX >100 && mouseX < 150 && mouseY>100 && mouseY <150) {
//    valor1=7;
//  }
//  if (mouseX > 0 && mouseX < 50 && mouseY>150 && mouseY <200 ) {
//    valor1=6;
//  }
//  if (mouseX > 50 && mouseX < 100 && mouseY>150 && mouseY <200 ) {
//    valor1=5;
//  }
//  if (mouseX > 100 && mouseX < 150 && mouseY>150 && mouseY <200) {
//    valor1=4;
//  }
//  if (mouseX > 0 && mouseX < 50 && mouseY>200 && mouseY <250 ) {
//    valor1=3;
//  }
//  if (mouseX > 50 && mouseX < 100 && mouseY>200 && mouseY <250) {
//    valor1=2;
//  }
//  if (mouseX > 100 && mouseX < 150 && mouseY>200 && mouseY <250) {
//    valor1=1;
//  }
//  if (mouseX > 0 && mouseX < 50 && mouseY>250 && mouseY <300) {
//    valor1=0;
//  }
//}
void operacoes() {
  if ( mouseX > 150 && mouseX < 200 && mouseY>100 && mouseY <150 ) {
    soma();
    contador=resultado;
    //soma
  }
  if (mouseX > 150 && mouseX < 200 && mouseY>150 && mouseY <200 ) {
    subtracao();
    //subtracao
  }
  if (mouseX > 150 &&mouseX < 200 && mouseY>200 && mouseY <250) {
    //multiplicacao
    multiplicacao();
  }
  if (mouseX > 150 && mouseX < 200 && mouseY>250 && mouseY <300) {
    //divisao
    divisao();
  }
  if (mouseX > 50 && mouseX < 100 && mouseY>250 && mouseY <300) {
    //apagar
    valor=0;
    //if (mouseX > 100 && mouseX < 150 && mouseY>250 && mouseY <300) {
    //  //igual , que nao quer funcionar
    //  resultado();
    //}
  }
}
void valor2() {
  if (mouseX > 0 && mouseX < 50 && mouseY>100 && mouseY <150) {
    valor2=9;
  }
  if (mouseX > 50 && mouseX < 100 && mouseY>100 && mouseY <150 ) {
    valor2=8;
  }
  if (mouseX >100 && mouseX < 150 && mouseY>100 && mouseY <150) {
    valor2=7;
  }
  if (mouseX > 0 && mouseX < 50 && mouseY>150 && mouseY <200 ) {
    valor2=6;
  }
  if (mouseX > 50 && mouseX < 100 && mouseY>150 && mouseY <200 ) {
    valor2=5;
  }
  if (mouseX > 100 && mouseX < 150 && mouseY>150 && mouseY <200) {
    valor2=4;
  }
  if (mouseX > 0 && mouseX < 50 && mouseY>200 && mouseY <250 ) {
    valor2=3;
  }
  if (mouseX > 50 && mouseX < 100 && mouseY>200 && mouseY <250) {
    valor2=2;
  }
  if (mouseX > 100 && mouseX < 150 && mouseY>200 && mouseY <250) {
    valor2=1;
  }
  if (mouseX > 0 && mouseX < 50 && mouseY>250 && mouseY <300) {
    valor2=0;
  }
}
void soma() {
  valor=valor+valor2;
}
void subtracao() {
  valor=valor-valor2;
}
void multiplicacao() {
  valor=valor*valor2;
}
void divisao() {
  valor=valor/valor2;
}
void resultado() {
  contador=valor;
}
