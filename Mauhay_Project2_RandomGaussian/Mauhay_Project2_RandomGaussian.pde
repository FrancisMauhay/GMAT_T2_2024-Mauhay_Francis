tBrush [] brush;

int iterationCount = 0;
void setup()
{
  fullScreen();
  background(255);
  
  brush = new tBrush[10];
  
  for(int i = 0; i < brush.length; i++)
  {
    brush[i] = new tBrush();
  }
}
void draw()
{
  if(iterationCount < 3)
  {
    for(int i = 0; i<brush.length;i++)
    {
     brush[i].render(); 
    }
    iterationCount++;
  }
  if (iterationCount >= 3)
  {
   noLoop(); 
  }
}
