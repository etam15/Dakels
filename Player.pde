void drawPlayer()
{
  DrawPx (player.x, player.y, White);
}

void movePlayer()
{
  CheckButtonsPress(); //checks buttons
  if (Button_Up)  //Button Commands
  {
    if (player.y < 7)
    {
    Tone_Start(ToneG5, 100);  
    player.y++;
    }
  }
  if (Button_Down)
  { 
    if (player.y > 0)
    {
    Tone_Start(ToneG5, 100);  
    player.y--;
    }
  }      
  
  if (Button_Left)
  { 
    if (player.x > 0 )
    {
    Tone_Start(ToneG5, 100);  
    player.x--;
    }
  }      
  
  if (Button_Right) 
  {      
    if (player.x < 7)
    {
    Tone_Start(ToneG5, 100);
    player.x++;
    }
  }  

}
