#include <MeggyJrSimple.h>

 //variables
int color = 15;
int robotx = 3;
int roboty = 7;
struct Point
{
  int x;
  int y;
};

Point player = {3,1};


void setup() //what shows up when you open it, which is level 1
{
  MeggyJrSimpleSetup ( ) ;
}

void loop()
{
  DrawPx (player.x, player.y, Blue);
  DrawPx (robotx, roboty, White);
  DisplaySlate();
    ClearSlate();
    movePlayer();
    moveRobots();
}

void moveRobots()
{
  if (player.y++) 
  {
    if (robotx == player.x)
    {
      roboty--;
    }
      else
       if (roboty > player.y)
       {
         roboty--;
         robotx--;
       }
         else 
          if (roboty < player.y)
          {
            roboty--;
            robotx++;
          }
  }
  
  if (player.y--) 
  {
    if (roboty == player.y)
    {
      roboty--;
    }
      else
       if (roboty > player.y)
       {
         roboty--;
         robotx--;
       }
         else 
          if (robotx < player.x)
          {
            robotx++;
            roboty--;
          }
  }
  if (player.x++)
  {
    if (robotx == player.x)
    {}
      else
       if (robotx > player.x)
       {
         robotx--;
         roboty--;
       }
         else 
          if (robotx < player.x)
          {
            roboty--;
            robotx++;
          }
  }  
  if (player.x--)
  {   
    if (robotx == player.x)
    {
      roboty--;
    }
      else
       if (robotx > player.x)
       {
         roboty--;
         robotx--;
       }
         else 
          if (robotx < player.x)
          {
            roboty--;
            robotx++;
          }
  }
}


