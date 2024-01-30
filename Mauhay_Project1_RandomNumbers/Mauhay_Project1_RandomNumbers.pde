cBrush []  brush1;
sBrush []  brush2;

int iterationCount = 0;

void setup()
{
 fullScreen();
 background(0);
 
 brush1 = new cBrush[10];
 brush2 = new sBrush[10];
 for (int i = 0; i < brush1.length; i++)
 {
   
   brush1[i] = new cBrush();
   brush1[i].pos = new PVector(random(width), random(height));
 }
 for(int x = 0; x < brush2.length; x++)
 {
  brush2[x] = new sBrush();
  brush2[x].pos = new PVector(random(width), random(height));
 }

}
void draw()
{
  if(iterationCount < 500)
  {
    for(int i = 0; i < brush1.length; i++)
    {
     brush1[i].render();
     brush1[i].RandomMove();
    }
    for(int x = 0; x < brush2.length; x++)
    {
      brush2[x].render();
      brush2[x].RandomMove();
    }
    iterationCount++;
  }
  if (iterationCount >= 500)
  {
   noLoop(); 
  }
}
