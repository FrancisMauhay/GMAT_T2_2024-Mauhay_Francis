class clickObj
{
  PImage img;
  PVector pos;
  PVector speed;
  
  clickObj(String _type)
  {
    img = loadImage(_type + ".png");
    img.resize(120,120);
    pos = new PVector(random(width), random(height));
    speed = new PVector(20,20);
  }
  
    void move()
    {
      pos.x += speed.x;
      pos.y += speed.y;
      
      if(pos.x > width)
      {
        pos.x = width;
        speed.x *= -1;
      }
      if(pos.y > height)
      {
       pos.y = height;
       speed.y *= -1;
      }
      if(pos.x < 0)
      {
        pos.x = 0;
        speed.x *= -1;
      }
      if(pos.y < 0)
      {
       pos.y = 0;
       speed.y *= -1;
      }
    }
    void render()
    {
      imageMode(CENTER);
      image(img, pos.x, pos.y);
    }
}
