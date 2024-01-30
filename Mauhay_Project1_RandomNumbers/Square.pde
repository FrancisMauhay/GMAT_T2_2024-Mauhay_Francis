class sBrush
{
   PVector pos = new PVector(0,0);
   float extent = 30;
   float speed = 20;
   
   void render()
   {
    square(pos.x, pos.y, extent);   
   }
   
   void RandomMove()
   {
     extent = random(10,30);
     speed = random(10,20);
     
     int diceRoll = (int)random(4);
     switch(diceRoll)
     {
       case 0:
              pos.x -= speed;
           break;
         case 1:
           pos.x += speed;
           break;
         case 2:
           pos.y -= speed;
           break;
         case 3:
           pos.y += speed;
           break;
      }
   }  
}
