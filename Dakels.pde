#include <MeggyJrSimple.h>

 //variables

struct Point
{
  int x;
  int y;
};

Point player = {3,1};
Point robot = {3,7};

void setup() //what shows up when you open it, which is level 1
{
  MeggyJrSimpleSetup ( ) ;
}

void loop()
{
  DrawPx (player.x, player.y, Blue);
  DrawPx (robot.x, robot.y, White);
  DisplaySlate();
    ClearSlate();
    movePlayer();
    moveRobots();
    
  if (robot.x && player.x > 7)                                                                 
  {
    robot.x = 7; 
    player.x = 7;
  }
  if (robot.x && player.x < 0)                                                         
  {
    robot.x = 0;
    player.x = 0;
  }
  if (robot.x && player.y > 7)                                                                 
  {
    robot.x = 7;
    player.y = 7;  
  }
  if (robot.x && player.y < 0)                                                            
  {
    robot.x = 0; 
    player.y = 0;
  }
    
}

void moveRobots()
{
  if (player.y++ or player.y--) 
  {
    if (robot.x = player.x)
    {
      robot.y--;
    }
      else
       if (robot.y > player.y)
       {
         robot.y--;
         robot.x--;
       }
         else 
          if (robot.y < player.y)
          {
            robot.y--;
            robot.x++;
          }
  }

  if (player.x-- or player.x++)
  {   
    if (robot.x = player.x)
    {
      robot.y--;
    }
      else
       if (robot.x > player.x)
       {
         robot.x--;
       }
         else 
          if (robot.x < player.x)
          {
            robot.x++;
          }
  }
}

 

