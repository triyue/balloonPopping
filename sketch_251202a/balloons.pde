//note balloon arraylist goes here, make sure the inaction of POP is here
//will there will a crosshair?

class Balloon {
  PVector location;
  Balloon(float x, float y) {
    //float px = random(120,250);
    //float py = random(60,340);
    // PVector location;
    location = new PVector(x, y);
  }

  void DrawBalloon(int i) {
    stroke(60);
    fill(78, 191, 242);
    ellipse(200, 200, 60, 60);
  }
}
