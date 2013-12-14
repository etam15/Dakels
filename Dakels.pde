#include <MeggyJrSimple.h>

 //variables
int color = 15;
int robot1x = 2;
int robot1y = 6;
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

void level1()
{
  DrawPx(robotx, roboty, White);
  DrawPx(robot1x, robot1y, White);
  delay(100);
  DisplaySlate();
}

void loop()
{
  DrawPx (player.x, player.y, Blue);
  DisplaySlate();
  CheckButtonsPress();
  
  if (Button_Up)
   {
    if (player.x < 7)
    {
    DrawPx (player.x, player.y, Dark);
    player.y++;
    robot1y++;
    roboty++;
    }
  }
  if (Button_Down)
  { 
    if (player.y > 0)
    {
    DrawPx (player.x, player.y, Dark);
    player.y--;
    robot1y--;
    roboty--;
    }
  }      
  
  if (Button_Left)
  { 
    if (player.x > 0 )
    {
    DrawPx (player.x, player.y, Dark);
    player.x--;
    robot1x--;
    robotx--;
    }
  }      
  
  if (Button_Right) 
  {      
    if (player.x < 7)
    DrawPx (player.x, player.y, Dark);
    player.x++;
    robotx++;
    robot1x++;
  }  
 if (ReadPx (player.x, player.y) == White)
  {
    Tone_Start
}
