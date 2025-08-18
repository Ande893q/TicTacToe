char[][] board = new char[3][3];
boolean playerTurn = true;

int fieldHeight;
int fieldWidth;

void setup() {
  size(600, 600);
  initBoard();
}

void draw() {
  background(200);
  drawBoard();
  printArray(board[0]);
}

void mouseReleased() {
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

boolean checkWin(){
if(){


}

}
