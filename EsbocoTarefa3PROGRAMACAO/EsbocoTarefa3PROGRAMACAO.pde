int lagto =1;
int papel =2;
int tesoura=3;
int pedra =4;
int spock =5;
int result1;
int result2;
int j;
void setup() {
  println("Bom Dia senhor----Aperte no X para mais infos");
}
void draw() {
}
void keyPressed() {
  if (keyCode=='X') {
    if (j==0) {
      println("Primeiramente aumente o seu console de tamanho.");
    }
    if (j==1) {
      println("As regras do jogo são simples!");
      println("O jogo consiste basicamente em...");
    }
    if (j==2) {
      println("pedra, papel e tesoura não convencionais =)");
    }
    if (j==3) {
      println("Você tem mais duas possibilidades de escolha");
    }
    if (j==4) {
      println("Isso diminui a probabilidade de empate =0");
    }
    if (j==5) {
      println("Digite para escolher:", "PS- Agora não seu bobx, termina de ler as regras primeiro :p");
      println("1-Lagarto");
      println("2-Papel");
      println( "3-Tesoura");
      println("4-Pedra");
      println("5-Spock");
      println("Press X...");
    }
    if (j==6) {
      println("Após isso,deixe o computador escolher o valor dele apertando a tecla de número 6");
      println("Press X...");
    }
    if (j==7) {
      println( "E por fim a tecla UP para ver seu resultado=)");
    }
    if (j==8) {
      println("Boa Sorte.");
    }
    if (j==9) {
      println("Acabaram as instruções , era só isso. Vai jogar!");
    }
  }
  j++;

  if (keyPressed) {
    if (keyCode == 49) {
      result1 = lagto;
      println("lagarto");
    }
    if (keyCode == 50) {
      result1  = papel;
      println("papel");
    }
    if (keyCode == 51) {
      result1  = tesoura;
      println("tesoura");
    }
    if (keyCode == 52) {
      result1  = pedra;
      println("pedra");
    }
    if (keyCode == 53) {
      result1  = spock;
      println("spock");
    }
  }
  if (keyCode==54) {
    result2= int(random(1, 5));
    if (result2==1)
      println("lagarto");
    if (result2==2)
      println("papel");
    if (result2==3)
      println("tesoura");
    if (result2==4)
      println("pedra");
    if (result2==5)
      println("Spock");
  }
  if (keyPressed && keyCode==UP) {
    if ( result1==lagto && result2 !=(tesoura) && result2!=(pedra)) {
      println("win");
    } else if (result1==tesoura && result2 !=(pedra) && result2!=(spock)) {
      println("win");
    } else if (result1==papel && result2 !=(tesoura) && result2!=(lagto)) {
      println("win");
    } else if (result1==pedra && result2 !=(spock) && result2!=(papel)) {
      println("win");
    } else if (result1==spock && result2 !=(lagto) && result2!=(papel)) {
      println("win");
    } else {
      println("lose");
    }
  }
}
