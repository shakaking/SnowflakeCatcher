Snowflake[] special;
void setup()
{
  size(400,400);
  noStroke();
  special = new Snowflake[100];
  for(int i=0; i< special.length; i++)
  {
    special[i] = new Snowflake();
  }
  background(0);
}

void draw()
{
  for(int i=0; i < special.length; i++)
  {
    special[i].lookDown();
    special[i].erase();
    special[i].move();
    special[i].show();
    special[i].wrap();
  }
}
void mouseDragged()
{
  if(mouseButton == LEFT)
  {
    fill(255,0,0);
    noStroke();
    ellipse(mouseX, mouseY, 10,10);
  }
  if(mouseButton == RIGHT)
  {
    fill(0);
    ellipse(mouseX, mouseY, 50,50);
  }
}

class Snowflake
{
   int x,y;
   boolean isMoving=true;
  Snowflake()
  {
    x=(int)(Math.random()*400);
    y=(int)(Math.random()*400);
  }
  void show()
  {
    fill(255);
    ellipse(x,y,7,7);
  }
  void lookDown()
  {
    if(get(x,y+5) != color(255,0,0))
      isMoving = true;
    else
      isMoving = false;
      
    }

  void erase()
  {
    fill(0);
    ellipse(x,y-5,8,8);
  }

  void move()
  {
    if(isMoving == true)
      y=y+1;
  }
  void wrap()
  {
    if(y>=390)
    {
      fill(0);
      ellipse(x,y,15,15);
      y = (int)(Math.random()*200)-400;
      x = (int)(Math.random()*400);      
    }
  }
}


