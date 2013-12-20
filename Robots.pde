void drawrobots()
{
  for (int i = 0; i < numberOfRobots; i++)
  {
    DrawPx (robots[i].x, robots[i].y, Red);
  }
} 

void moveRobots()
{
  for (int i = 0; i < numberOfRobots; i++)
  {
    if (robots[i].y < player.y) 
  {
    robots[i].y++; 
  }
  else if (robots[i].y > player.y)
  {
    robots[i].y--;
  }
  
  if (robots[i].x > player.x)
  {
    robots[i].x--;
  }
 else if (robots[i].x < player.x)
  {
    robots[i].x++;
  }
  
   if (robots[i].x > 7)                                                                 
  {
    robots[i].x = 7;
  }
  if (robots[i].x < 0)                                                         
  {
    robots[i].x = 0;
  }
  if (robots[i].y > 7)                                                                 
  {
    robots[i].y = 7;  
  }
  if (robots[i].y < 0)                                                            
  {
    robots[i].y = 1;
  }
  }
}




 

