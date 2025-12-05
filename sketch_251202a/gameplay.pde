class GamePlay {
  boolean isGameplay = false;
  boolean lose = false;
  boolean win = false;
  GamePlay() {
  }

  void drawGameScreen() {
    rectMode(CORNER);
    noStroke();
    fill(214, 175, 143);
    rect(0, 0, 400, 400);
    fill(0);
    rect(0, 0, 400, 60); //top black box, put timer here
    rect (0, 310, 400, 400); //bottom black box, put score here

    fill(255);
    textAlign(CENTER);
    textSize(50);
    text(round(score), 200, 360);

    for (Balloon b : ball) {
      b.DrawBalloon();
    }
    for(Balloon b : ball) {
    b.DrawMovingBalloon();
    }
  }
}
