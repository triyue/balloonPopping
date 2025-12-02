boolean isGameStart = false;
boolean isGameOver = false;
boolean isGameWin = false;

void setup() {
  size (400, 400);
  background (255);
}

LoseScreen islose = new LoseScreen();
WinScreen iswin = new WinScreen();
button entergame = new button();

void draw() {
  //islose.DRAWisLose();
  iswin.DRAWisWin();
  entergame.DrawStartButton();
}

//please put everything together here and not elsewhere, classes aren't
//declared if class has already done so (static and non-static)
