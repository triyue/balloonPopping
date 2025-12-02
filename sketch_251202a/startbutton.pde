class button {
  boolean isClicked = false;
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
        isClicked = !isClicked;
        println("works");
      }
    }
  }
}
