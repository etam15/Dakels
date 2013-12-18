
void movePlayer()
{
  CheckButtonsPress(); 
  if (Button_Up)
   {
    if (player.y < 7)
    {
      Tone_Start(18182, 100);
      player.y++;
      moveRobots();
    }
  }
  if (Button_Down)
  { 
    if (player.y > 0)
    {
      Tone_Start(18182, 100);
      player.y--;
      moveRobots();
    }
  }      
  
  if (Button_Left)
  { 
    if (player.x > 0 )
    {
      Tone_Start(18182, 100);
      player.x--;
      moveRobots();
    }
  }      
  
  if (Button_Right) 
  {      
    if (player.x < 7)
    {
      Tone_Start(18182, 100);
      player.x++;
      moveRobots();
    }
  }  
  
  if (player.x > 7)                                                                 
  {
    player.x = 0;
  }
  if (player.x < 0)                                                         
  {
    player.x = 7;
  }
  if (player.y > 7)                                                                 
  {
    player.y = 0;  
  }
  if (player.y < 0)                                                            
  {
    player.y = 7;
  }
}
