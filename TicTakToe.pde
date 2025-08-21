char[][] board = new char[3][3];
boolean playerTurn = true;
boolean gridOneX;
boolean gridTwoX;
boolean gridThreeX;
boolean gridFourX;
boolean gridFiveX;
boolean gridSixX;
boolean gridSevenX;
boolean gridEightX;
boolean gridNineX;

boolean gridOneY;
boolean gridTwoY;
boolean gridThreeY;
boolean gridFourY;
boolean gridFiveY;
boolean gridSixY;
boolean gridSevenY;
boolean gridEightY;
boolean gridNineY;

int fieldHeight;
int fieldWidth;

void setup() {
  size(600, 600);
  initBoard();
}

void draw() {
  background(200);
  drawBoard();
  winnerScreen();
  drawPlays();
}

void mouseReleased() {

  if (mouseX<200 && mouseY<200) {
    if (playerTurn) {
      gridOneX = true;
      playerTurn = false;
    } else {
      gridOneY = true;
      playerTurn = true;
    }

  } else if (mouseX<400 && mouseY<200) {
    println("hej hej");
  } else if (mouseX<600 && mouseY<200) {
    println("hej hej hej");
  } else if (mouseX<200 && mouseY<400) {
    println("haj");
  } else if (mouseX<400 && mouseY<400) {
    println("haj haj");
  } else if (mouseX<600 && mouseY<400) {
    println("haj haj haj");
  } else if (mouseX<200 && mouseY<600) {
    println("hij");
  } else if (mouseX<400 && mouseY<600) {
    println("hij hij");
  } else if (mouseX<600 && mouseY<600) {
    println("hij hij hij");
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

void drawPlays() {
  if (gridOneY) {
    circle(100, 100, 150);
  }
  if (gridOneX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }

  if (gridTwoY) {
    circle(100, 100, 150);
  }
  if (gridTwoX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }

  if (gridThreeY) {
    circle(100, 100, 150);
  }
  if (gridThreeX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }

  if (gridFourY) {
    circle(100, 100, 150);
  }
  if (gridFourX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }

  if (gridFiveY) {
    circle(100, 100, 150);
  }
  if (gridFiveX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }

  if (gridSixY) {
    circle(100, 100, 150);
  }
  if (gridSixX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }

  if (gridSevenY) {
    circle(100, 100, 150);
  }
  if (gridSevenX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }
  if (gridEightY) {
    circle(100, 100, 150);
  }
  if (gridEightX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
  }
  if (gridNineY) {
    circle(100, 100, 150);
  }
  if (gridNineX) {
    line(0, 0, 200, 200);
    line(0, 200, 200, 0);
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
  if (checkWin()) {


    rectMode(CENTER);
    textSize(50);
    fill(200);
    rect(300, 300, 400, 100);
    fill(1);
    text("Kryds Vinder", 175, 315);
  }
}
