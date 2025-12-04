//note balloon arraylist goes here, make sure the inaction of POP is here
//will there will a crosshair?

class Balloon 
{
  boolean isPopped = false;
  PVector location;
  Balloon(float x, float y) 
  {
    location = new PVector(x, y);
  }

  void DrawBalloon() 
  {
    if(isPopped == false){
    stroke(60);
    fill(78, 191, 242);
    ellipse(location.x, location.y, 60, 60);
  }
  }
  
  void balloonClicked() {
   if (dist(location.x,location.y, mouseX, mouseY) <= 30 && isPopped == false)
   {
     isPopped = !isPopped;
     score += 1;
   }
   //if (score == 10);
   //{
   //  gameState = 3;
   //}
  }
  
}
