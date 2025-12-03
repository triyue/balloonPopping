boolean isGameStart = false;
boolean isGameOver = false;
boolean isGameWin = false;

void setup() {
  size (400, 400);
}

LoseScreen islose = new LoseScreen();
WinScreen iswin = new WinScreen();
button entergame = new button();
GamePlay screen = new GamePlay();
timer timing = new timer();

void draw() {
  background (255);
  screen.drawGameScreen();
  timing.time();
  //islose.DRAWisLose();
  //iswin.DRAWisWin();
  //entergame.DrawStartButton();
}

//please put everything together here and not elsewhere, classes aren't
//declared if class has already done so (static and non-static)
