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

//draw basic none moving ballon
  void DrawBalloon()
  {
    if (isPopped == false) {
      stroke(60);
      fill(78, 191, 242);
      ellipse(location.x, location.y, 60, 60);
    }
  }

//setup for the vectors for moving balloon
  void DrawMovingBalloon()
  {
    if (isMovPop == false)
    {
      if (isMoving == false) {
        position = new PVector(0, height/2);
        velocity = new PVector(0, 0);
        acceleration = new PVector(.02, 0);
        isMoving = true;
      } else {
        //println("mobing");
        DrewMovingBalloon();
      }
    }
  }
  
  //tells the setup where to go
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
    stroke(60);
    fill(213, 162, 240);
    ellipse(position.x, position.y, 60, 60);
    //println("mobing");
  }

  //making sure when mouse is within circle and is clicked, ball is removed and when all balloons gone win game. also add number to score.
  void balloonClicked()
  {
    if (dist(location.x, location.y, mouseX, mouseY) <= 30 && isPopped == false)
    {
      isPopped = !isPopped;
      score += 1;
      if (score >= 11)
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
      score += .15;
      if (score >= 11)
      {
        gameState = 3;
      }
    }
  }
}
