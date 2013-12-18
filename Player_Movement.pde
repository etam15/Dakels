
void movePlayer()
{
  CheckButtonsPress(); 
  if (Button_Up)
   {
      Tone_Start(ToneC5, 100);
      player.y++;
      moveRobots();
  }
  if (Button_Down)
  { 
      Tone_Start(ToneC5, 100);
      player.y--;
      moveRobots();
  }      
  
  if (Button_Left)
  { 
      Tone_Start(ToneC5, 100);
      player.x--;
      moveRobots();
  }      
  
  if (Button_Right) 
  {      
      Tone_Start(ToneC5, 100);
      player.x++;
      moveRobots();
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
