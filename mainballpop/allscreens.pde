//screens for start, lose, and win

class Starting
{
  Starting()
  {
  }

  void BeginGame()
  {
    fill (255);
    rect(0, 0, 400, 400);
  }
}

class LoseScreen
{
  LoseScreen()
  {
  }

  void DRAWisLose()
  {
    noStroke();
    fill (0);
    rect (0, 0, 400, 400);
    fill (255);
    quad (270, 50, 250, 40, 160, 160, 140, 150);
    quad (140, 50, 160, 40, 270, 150, 250, 160);
  }
}

class WinScreen
{
  WinScreen()
  {
  }

  void DRAWisWin()
  {
    noStroke();
    fill (0);
    rect (0, 0, 400, 400);
    fill (255);
    quad (140, 85, 180, 115, 180, 160, 150, 160);
    quad (180, 115, 210, 50, 245, 155, 180, 160);
    quad (230, 115, 273, 85, 260, 160, 180, 160);
  }
}
