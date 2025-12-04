boolean isGameStart = false;
boolean isGameOver = false;
boolean isGameWin = false;
boolean timesup = false;
int score = 0;

void setup()
{
  size (400, 400);
  for (int i = 0; i<10; i++)
  {
    ball.add(new Balloon(random(0, 400), random(90, 285)));
  }
}

LoseScreen islose = new LoseScreen();
WinScreen iswin = new WinScreen();
button entergame = new button();
GamePlay screen = new GamePlay();
timer timing = new timer();

ArrayList<Balloon> ball = new ArrayList<Balloon>();

void draw()
{
  background (255);

  screen.drawGameScreen();
  timing.time();
  //islose.DRAWisLose();
  //iswin.DRAWisWin();
  //entergame.DrawStartButton();
}

void mousePressed() {
  for (Balloon b : ball) {
    b.balloonClicked();
  }
}
