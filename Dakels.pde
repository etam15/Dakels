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

Point player = {3,2};


void setup() //what shows up when you open it, which is level 1
{
  level1();
  MeggyJrSimpleSetup ( ) ;
}

void loop()
{
  DrawPx (player.x, player.y, Blue);
  DisplaySlate();
    ClearSlate();
    movePlayer();
    moveRobots();
}

void moveRobots()
{
  if (player.y++) 
  {
  }
  if (player.y--) 
  {
  }
  if (player.x++)
  {
  }  
  if (player.x--)
  {
  }
}


