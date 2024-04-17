class Net
{
 PVector pos = new PVector (1400, 400);
 PVector extend = new PVector(200,50);
 
 float angle = 0;
 float amplitude = 100;
 float speed = 0.02;
 
 void update()
 {
   pos.x = 1400 + amplitude *sin(angle);
   angle += speed;
 }
 
 boolean ballOverlap(Ball _ball) 
 {
   return (_ball.pos.x > pos.x && _ball.pos.x < pos.x + extend.x &&
           _ball.pos.y > pos.y && _ball.pos.y < pos.y + extend.y);
 }
 
 void render()
 {
  noStroke();
  fill(#F53011);
  rect(pos.x, pos.y,extend.x,extend.y); 
 }
}
