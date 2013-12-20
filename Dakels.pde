#include <MeggyJrSimple.h>

 //variables

struct Point
{
  int x;
  int y;
};

Point s1 = {3,4};
Point s2 = {4,6};
Point s3 = {0,4};
Point s4 = 
Point s5 =
Point s6 = 
Point s7 = 
Point s8 = 
Point robots = {
Point player = {3,1};
Point robot = {3,7};

void setup() //what shows up when you open it, which is level 1
{
  MeggyJrSimpleSetup ( );
  Serial.begin(9600);
}

void loop()
{
  DrawPx (player.x, player.y, White);
  DrawPx (robot.x, robot.y, Red);
  DisplaySlate();
  delay(100);
    ClearSlate();
    movePlayer();
    Serial.print("X = ");
    Serial.println(player.x);
    Serial.print("Y = ");
    Serial.println(player.y);
    
    if (ReadPx (player.x, player.y) == White)
    {
      Tone_Start(18182, 100);
      ClearSlate();
      player.x = 3;
      player.y = 1;
    }
}
    

