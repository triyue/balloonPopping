class button {
  button() {
  }

  void DrawStartButton() {
    rectMode(CORNERS);
    fill (255);
    rect (70, 200, 330, 360);
    fill (0);
    rect (115, 225, 150, 300);
    rect( 150, 265, 255, 300);
    triangle(255, 225, 305, 280, 255, 340);

    if ((mouseX >= 70 && mouseX <= 330)&& (mouseY>= 200 && mouseY <= 360)) {
      if (mousePressed) {
        gameState = 1;
        ball.clear();
        for (int i = 0; i<10; i++)
        {
          ball.add(new Balloon(random(0, 400), random(90, 285)));
        }
        score = 0;
        startTime = millis();
        println("works");
      }
    }
  }
}
