//this should only be the time, reminder to add a boolean that allows lose screen

class timer {
  boolean timesup = false;
  timer() {
  }

  void time() {
    rectMode(CORNERS);
    int count = 7000;
    float t = millis();
    //fill(255);
    //rect(70, 20, 350, 50);
    fill(255);
    rect(70, 20, (350*(1-(t/count))), 45);
    if (t >= 5610) {
      timesup = !timesup;
      {
        println ("word");
      }
    }
    //fill(247, 32, 32);
    //ellipse(60, 30, 40, 40);
    //fill(255);
    //ellipse(60, 30, 35, 35);
    //fill(0);
    //stroke(255);
    //line(50, 20, 50, 30);
    //line(50, 30, 58, 30);
  }
}
