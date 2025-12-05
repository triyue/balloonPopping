class Balloon
{
  boolean isPopped = false;
  boolean isMoving = false;
  boolean isMovPop = false;
  PVector position;
  PVector velocity;
  PVector acceleration;
  PVector location;

  Balloon(float x, float y)
  {
    location = new PVector(x, y);
  }

  void DrawBalloon()
  {
    if (isPopped == false) {
      stroke(60);
      fill(78, 191, 242);
      ellipse(location.x, location.y, 60, 60);
    }
  }

  void DrawMovingBalloon()
  {
    if(isMovPop != true)
    {
      if (isMoving != true) {

      position = new PVector(0, height/2);
      velocity = new PVector(0, 0);
      acceleration = new PVector(.02, 0);
      isMoving = true;
      } 
    
    else {
      //println("mobing");
      DrewMovingBalloon();
    }
    }
  }

  void DrewMovingBalloon()
  {

    if (position.x>width)
    {
      position.x=width-1;
      velocity.x=0;
      acceleration.x =-.02;
    }

    position.add(velocity);
    velocity.add(acceleration);
    fill(213, 162, 240);
    ellipse(position.x, position.y, 60, 60);
    //println("mobing");
  }

  void balloonClicked() {
    if (dist(location.x, location.y, mouseX, mouseY) <= 30 && isPopped == false)
    {
      isPopped = !isPopped;
      score += 1;
      if (score == 11)
      {
        gameState = 3;
      }
    }
  }
  void movingClicked()
  {
    if (dist(position.x, position.y, mouseX, mouseY) <=30 && isMovPop == false)
    {
      isMovPop = !isMovPop;
      score += .1;
      if (score == 11)
      {
      }
    }
  }
}
