
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
    robot.x = 7;
  }
  if (robot.x < 0)                                                         
  {
    robot.x = 0;
  }
  if (robot.y > 7)                                                                 
  {
    robot.y = 7;  
  }
  if (robot.y < 0)                                                            
  {
    robot.y = 1;
  }
}




 

