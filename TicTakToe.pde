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
  drawPlays();
  winnerScreen();
}

void mouseReleased() {

  if (mouseX<200 && mouseY<200) {
    if (playerTurn) {
      gridOneX = true;
      board[0][0]='x';
      playerTurn = false;
    } else {
      gridOneY = true;
      board[0][0]='y';
      playerTurn = true;
    }
  } else if (mouseX<400 && mouseY<200) {
    if (playerTurn) {
      gridTwoX = true;
      board[1][0]='x';
      playerTurn = false;
    } else {
      gridTwoY = true;
      board[1][0]='y';
      playerTurn = true;
    }
  } else if (mouseX<600 && mouseY<200) {
    if (playerTurn) {
      gridThreeX = true;
      board[2][0]='x';
      playerTurn = false;
    } else {
      gridThreeY = true;
      board[2][0]='y';
      playerTurn = true;
    }
  } else if (mouseX<200 && mouseY<400) {
    if (playerTurn) {
      gridFourX = true;
      board[0][1]='x';
      playerTurn = false;
    } else {
      gridFourY = true;
      board[0][1]='y';
      playerTurn = true;
    }
  } else if (mouseX<400 && mouseY<400) {
    if (playerTurn) {
      gridFiveX = true;
      board[1][1]='x';
      playerTurn = false;
    } else {
      gridFiveY = true;
      board[1][1]='y';
      playerTurn = true;
    }
  } else if (mouseX<600 && mouseY<400) {
    if (playerTurn) {
      gridSixX = true;
      board[2][1]='x';
      playerTurn = false;
    } else {
      gridSixY = true;
      board[2][1]='y';
      playerTurn = true;
    }
  } else if (mouseX<200 && mouseY<600) {
    if (playerTurn) {
      gridSevenX = true;
      board[0][2]='x';
      playerTurn = false;
    } else {
      gridSevenY = true;
      board[0][2]='y';
      playerTurn = true;
    }
  } else if (mouseX<400 && mouseY<600) {
    if (playerTurn) {
      gridEightX = true;
      board[1][2]='x';
      playerTurn = false;
    } else {
      gridEightY = true;
      board[1][2]='y';
      playerTurn = true;
    }
  } else if (mouseX<600 && mouseY<600) {
    if (playerTurn) {
      gridNineX = true;
      board[2][2]='x';
      playerTurn = false;
    } else {
      gridNineY = true;
      board[2][2]='y';
      playerTurn = true;
    }
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
    circle(300, 100, 150);
  }
  if (gridTwoX) {
    line(200, 200, 400, 0);
    line(400, 200, 200, 0);
  }

  if (gridThreeY) {
    circle(500, 100, 150);
  }
  if (gridThreeX) {
    line(400, 200, 600, 0);
    line(600, 200, 400, 0);
  }

  if (gridFourY) {
    circle(100, 300, 150);
  }
  if (gridFourX) {
    line(0, 200, 200, 400);
    line(0, 400, 200, 200);
  }

  if (gridFiveY) {
    circle(300, 300, 150);
  }
  if (gridFiveX) {
    line(200, 200, 400, 400);
    line(200, 400, 400, 200);
  }

  if (gridSixY) {
    circle(500, 300, 150);
  }
  if (gridSixX) {
    line(400, 200, 600, 400);
    line(400, 400, 600, 200);
  }

  if (gridSevenY) {
    circle(100, 500, 150);
  }
  if (gridSevenX) {
    line(0, 400, 200, 600);
    line(0, 600, 200, 400);
  }
  if (gridEightY) {
    circle(300, 500, 150);
  }
  if (gridEightX) {
    line(200, 400, 400, 600);
    line(200, 600, 400, 400);
  }
  if (gridNineY) {
    circle(500, 500, 150);
  }
  if (gridNineX) {
    line(400, 400, 600, 600);
    line(400, 600, 600, 400);
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
    text("Vinder!", 175, 315);
  }
}
