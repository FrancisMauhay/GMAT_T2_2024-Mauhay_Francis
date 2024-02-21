void setup()
{
  noiseSeed(12107793);
  noiseDetail(0,0);
  fullScreen();
  background(#4C5B5C);
  
  float xt = 0;
  float pos[] = {1,2,3,4};
  float Noise[] = {1,2,3,4};
  color colors[] = {#FF715B,#F9CB40};

   for(int i = 0; i < width; i++)
    {
     pos[0] += 1;
     pos[1] += 1;
     pos[2] += 1;
     pos[3] += 1;
     
     Noise[0] = height - 200 - (map(noise(xt), 0, 1, 0, 200));
     Noise[1] = height - 400 - (map(noise(xt), 0, 1, 0, 200));
     Noise[2] = height - 600 - (map(noise(xt), 0, 1, 0, 200));
     Noise[3] = height - 800 - (map(noise(xt), 0, 1, 0, 200));
     
     xt -= 0.015;
   
     float R = random(50);
     float percentage = random(75);
     float chance = random(1,2);
    
    for(int n = 0; n < 4; n++)
    {
      float y = Noise[n] - random(100);
      
      if(n == 0 || n == 2)
      {
       if(percentage < 50)
       {
        if(chance == 1)
        {
        strokeWeight(1);
        stroke(colors[0]);
      
        }
        else if(chance == 2)
        {
          strokeWeight(1);
          stroke(colors[0]);
          fill(colors[0]);
        }
       }
       else
       {
       strokeWeight(1);
       stroke(colors[0]);
       fill(colors[1]);
       line(pos[n], Noise[n], pos[n], y);
       circle(pos[n], Noise[n], R);
       }
         strokeWeight(8);
         stroke(colors[0]);
         line(pos[n], Noise[n], pos[n], Noise[n]);
         line(pos[n], Noise[n], pos[n], height);   
       }      
      else if(n == 1 || n == 3)
      {
       if(percentage < 50)
       {
        if(chance == 1)
        {
        strokeWeight(1);
        stroke(colors[1]);
        line(pos[n], Noise[n], pos[n], y);      
        }
        else if(chance == 2)
        {
          strokeWeight(1);
          stroke(colors[1]);
          fill(colors[0]);
          circle(pos[n],Noise[n], R);
        }
       }
       else
       {
       strokeWeight(1);
       stroke(colors[1]);
       fill(colors[0]);
       line(pos[n], Noise[n], pos[n], y);
       circle(pos[n], Noise[n], R);
       }
         strokeWeight(8);
         stroke(colors[1]);
         line(pos[n], Noise[n], pos[n], Noise[n]);
         line(pos[n], Noise[n], pos[n], height);   
       } 
    }
  }
}
