float score = 0;
int gameState = 0;

void setup()
{
  size (400, 400);
}


LoseScreen islose = new LoseScreen();
WinScreen iswin = new WinScreen();
button entergame = new button();
GamePlay screen = new GamePlay();
timer timing = new timer();
Starting begin = new Starting();

ArrayList<Balloon> ball = new ArrayList<Balloon>();


void draw()
{
  background (255);
  if (gameState == 0)
  {
    begin.BeginGame();
    entergame.DrawStartButton();
  } else if (gameState == 1) {
    screen.drawGameScreen();
    timing.time();
  } else if (gameState == 2) {
    islose.DRAWisLose();
    entergame.DrawStartButton();
  } else if (gameState == 3) {
    iswin.DRAWisWin();
    entergame.DrawStartButton();
  }
}


void mousePressed()
{
  if (gameState == 1)
  {
    for (Balloon b : ball)
    {
      b.balloonClicked();
      b.movingClicked();
    } 
  }
}
