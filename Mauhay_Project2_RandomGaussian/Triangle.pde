class tBrush
{
  color colors[] = {#F51616,#F58216,#F5EE16,#58F516,#16F5C6,#5C16F5,#F416F5};
  float max = 50;
  PVector point1 = new PVector(0 + gaussian(100,50), height);
  PVector point2 = new PVector(width/2 + gaussian(100, 0), constrain(gaussian(50,100),20,height/2));
  PVector point3 = new PVector(width - gaussian(100,50), height);
  float gaussian(float std, float mean) 
  {
   return std * randomGaussian() + mean; 
  }
  void render()
  {
    blendMode(MULTIPLY);
    fill(colors[int(random(0,colors.length))],random(20,50));
    noStroke();
    triangle(point1.x,point1.y,point2.x,point2.y,point3.x,point3.y);
  }
}
