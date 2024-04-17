int bombAmt = 5;
int fruitAmt = 1;
boolean conditionMet = false;

clickObj[] bomb = new clickObj[bombAmt];
clickObj[] fruit = new clickObj[fruitAmt];

void setup()
{
 fullScreen();
 
 for(int i = 0; i < bombAmt; i++)
 {
   bomb[i] = new clickObj("bomb");
 }
 
 for(int a = 0; a < fruitAmt; a++)
 {
 fruit[a] = new clickObj("apple");
 }
}

void draw()
{
  background(#959595);
for (int i = 0; i < bombAmt; i++)
{
  if (bomb[i] != null)
  {
    bomb[i].move();
    bomb[i].render();
  }
}

for (int a = 0; a < fruitAmt; a++)
{
  if (fruit[a] != null)
  {
    fruit[a].move();
    fruit[a].render();
  }
}
  
  textSize(80);
  fill(0);
  textAlign(LEFT,TOP);
  text("Fruits: " + fruitAmt, 20,20);
  text("Bombs: " + bombAmt, 20, 80); 
  
  if(bombAmt == 0)
  {
   conditionMet = true;
   textSize(100);
   fill(0);
   textAlign(CENTER,CENTER);
   text("You Lose...", width/2, height/2);
  }
  else if(fruitAmt <= 0)
  {
   conditionMet = true;
   textSize(100);
   fill(0);
   textAlign(CENTER,CENTER);
   text("You Win", width/2, height/2);
  }
}

void mousePressed() {
  if(!conditionMet)
  {
    for (int i = 0; i < bombAmt; i++) {
      if (bomb[i] != null && dist(bomb[i].pos.x, bomb[i].pos.y, mouseX, mouseY) < 100) {
        bombAmt--;
        bomb[i] = null;
      }
    }
    int j = 0;
    for (int i = 0; i < bomb.length; i++) {
      if (bomb[i] != null) {
        bomb[j] = bomb[i];
        j++;
      }
    }
    for (int i = j; i < bomb.length; i++) {
      bomb[i] = null;
    }
    for (int a = 0; a < fruitAmt; a++) {
      if (fruit[a] != null && dist(fruit[a].pos.x, fruit[a].pos.y, mouseX, mouseY) < 100) {
        fruitAmt--;
        fruit[a] = null;
      }
    }
    int x = 0;
    for (int i = 0; i < fruit.length; i++) {
      if (fruit[i] != null) {
        fruit[x] = fruit[i];
        x++;
      }
    }
    for (int i = x; i < fruit.length; i++) {
      fruit[i] = null;
    }
  }
}
