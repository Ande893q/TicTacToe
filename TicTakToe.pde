char[][] board = new char[3][3];
boolean playerTurn = true;
int backgroundColour=200;
int fieldHeight;
int fieldWidth;
int textOffset=12;

void setup() {
  size(600, 600);
  initBoard();
  fieldHeight=height/3;
  fieldWidth=width/3;
  textSize(50);
  fill(1);
}

void draw() {
  background(backgroundColour);
  drawBoard();
  drawPlay();
  winnerScreen();
}

void mouseReleased() {
  int tempX=mouseX/fieldWidth;
  println(tempX);

  int tempY=mouseY/fieldHeight;
  println(tempY);
  if (board[tempX][tempY]==' ') {
    if (playerTurn) {
      board[tempX][tempY]='X';
    } else {
      board[tempX][tempY]='O';
    }
    playerTurn=!playerTurn;
  }
}
void initBoard() {
  for (int i=0; i<3; i++) {
    for (int j=0; j<3; j++) {
      board[i][j]=' ';
    }
  }
}

void drawBoard() {
  strokeWeight(2);
  line(200, 600, 200, 0);
  line(400, 600, 400, 0);
  line(600, 200, 0, 200);
  line(600, 400, 0, 400);
}

void drawPlay() {
  for (int i=0; i<3; i++) {
    for (int j=0; j<3; j++) {
      text(board[i][j], fieldWidth/2+fieldWidth*i-textOffset, fieldHeight/2+fieldHeight*j);
    }
  }
}

boolean checkWin() {
  boolean winner=false;

  for (int i=0; i<3; i++) {
    if (board[0][i]==board[1][i] && board[1][i]==board[2][i] && board[0][i]!=' ') {
      winner=true;
    }
  }
  for (int i=0; i<3; i++) {
    if (board[i][0]==board[i][1] && board[i][1]==board[i][2] && board[i][0]!=' ') {
      winner=true;
    }
  }
  if (board[0][0]==board[1][1] && board[1][1]==board[2][2] && board[0][0]!=' ') {
    winner=true;
  }

  if (board[0][2]==board[1][1] && board[1][1]==board[2][0] && board[1][1]!=' ') {
    winner=true;
  }

  return winner;
}

void winnerScreen() {
  String str;
  if (checkWin()) {
    rectMode(CENTER);
    fill(200);
    rect(300, 300, 400, 100);
    fill(1);
    if (!playerTurn) {
      str="X Vinder!";
    } else {
      str="O Vinder!";
    }
    text(str, 175, 315);
  }
}

void keyPressed() {
  if (key=='y') {
    initBoard();
    println("stop");
  } else {
    noLoop();
    println("start");
  }
}
