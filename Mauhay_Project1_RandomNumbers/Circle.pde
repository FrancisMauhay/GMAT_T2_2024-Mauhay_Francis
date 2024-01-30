class cBrush
{
   PVector pos = new PVector(0,0);
   float radius = 30;
   float speed = 20;
   color colors[] = {#F51616,#F58216,#F5EE16,#58F516,#16F5C6,#5C16F5,#F416F5};
   
   void render()
   {
    fill(colors[int(random(0,colors.length))]);
    circle(pos.x, pos.y, radius); 
    blendMode(ADD);
   }
   
   void RandomMove()
   {
     radius = random(10,50);
     speed = random(5,40);
     
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
