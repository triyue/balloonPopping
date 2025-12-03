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
    rect(70, 20, (350*(1-(t/count))), 50);
    if (t >= 5610) {
      timesup = !timesup;
      {
        println ("word");
      }
    }
  }
}
