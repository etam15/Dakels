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
  MeggyJrSimpleSetup ( );
  Serial.begin(9600);
}

void loop()
{
  DrawPx (player.x, player.y, Blue);
  DrawPx (robot.x, robot.y, White);
  DisplaySlate();
  delay(100);
    ClearSlate();
    movePlayer();
    Serial.print("X = ");
    Serial.println(player.x);
    Serial.print("Y = ");
    Serial.println(player.y);
}
    

void moveRobots()
{

  if (robot.y < player.y) 
  {
    robot.y++; 
  }
  else if (robot.y > player.y)
  {
    robot.y--;
  }
  
  if (robot.x > player.x)
  {
    robot.x--;
  }
 else if (robot.x < player.x)
  {
    robot.x++;
  }
  
  if (robot.x > 7)                                                                 
  {
    robot.x = 0;
  }
  if (robot.x < 0)                                                         
  {
    robot.x = 7;
  }
  if (robot.y > 7)                                                                 
  {
    robot.y = 0;  
  }
  if (robot.y < 0)                                                            
  {
    robot.y = 7;
  }
}



 

