float startTime;

class timer {

  timer() {
  }

  void time() {
    rectMode(CORNERS);
    int count = 7000;
    float t = millis() - startTime;
    fill(255);
    rect(70, 20, (350*(1-(t/count))), 45);
    if (t >= 5610) {
      gameState = 2;
      println ("word");
    }
    fill(247, 32, 32);
    ellipse(60, 30, 40, 40);
    fill(255);
    ellipse(60, 30, 35, 35);
    stroke(0);
    line(50, 20, 50, 30);
    line(50, 30, 58, 30);
  }
}
