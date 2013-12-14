
void movePlayer()
{
  CheckButtonsPress(); 
  if (Button_Up)
   {
    if (player.x < 7)
    {
    Tone_Start(18182, 100);
    player.y++;
    }
  }
  if (Button_Down)
  { 
    if (player.y > 0)
    {
      Tone_Start(18182, 100);
    player.y--;
    }
  }      
  
  if (Button_Left)
  { 
    if (player.x > 0 )
    {
      Tone_Start(18182, 100);
    player.x--;
    }
  }      
  
  if (Button_Right) 
  {      
    if (player.x < 7)
    Tone_Start(18182, 100);
    player.x++;
  }  
 if (ReadPx (player.x, player.y) == White)
  {
    Tone_Start(18182, 100);
    level1;
  }
}
