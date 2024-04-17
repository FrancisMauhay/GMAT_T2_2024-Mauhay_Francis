Ball myBall;
Net myNet;
PVector wind = new PVector (0.05,0);
PVector gravity = new PVector (0,0.5) ;

PVector mouseClickPos = new PVector();
PVector mouseReleasePos = new PVector();

boolean isDragging = false;
boolean released = false;
boolean ballMissed = false;

int score;
int missed;
int grounded;

void setup()
{
  fullScreen();
  myBall = new Ball();
  myNet = new Net();
}

void draw()
{
  background(128);
  
  textSize(80);
  fill(0);
  textAlign(LEFT,TOP);
  text("Score: " + score,20,20);
  text("Missed: " + missed,20,80);
  
  if (released)
  {
  myBall.addForce(gravity);
  myBall.update();
  
  if (myNet.ballOverlap(myBall) && myBall.velocity.y > 0)
  {
    if(grounded <= 0)
    {
    score ++ ;
    background(#59EA32);
    myBall = new Ball();
    released = false;
    }
  }
  if (myBall.pos.y >= 1000 && !ballMissed) {
      println("Missed");
      missed++;
      ballMissed = true;
      
      myBall = new Ball();
      released = false;
      ballMissed = false;
    }
  }
  
      if(isDragging)
  {
    line(mouseClickPos.x, mouseClickPos.y, mouseX, mouseY);
  }
  myNet.update();
  myNet.render();
  myBall.render(); 
}

void mousePressed()
{
  if(!isDragging && !released)
  {
  mouseClickPos = new PVector(mouseX, mouseY);
  isDragging = true;
  }
}

void mouseReleased()
{
  if(isDragging)
  {
    mouseReleasePos = new PVector(mouseX, mouseY);
    isDragging = false;
    released = true;
    
    PVector _vectorOffset = mouseClickPos.sub(mouseReleasePos);
    float _magnitude = mag(_vectorOffset.x, _vectorOffset.y);
    PVector _dir = _vectorOffset.normalize();
    
    myBall.addForce(_dir.mult(_magnitude/14));
  }
  
}
