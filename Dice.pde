void setup()
{
  size(290,290);
  noLoop();
}
void draw()
{
  for(int y = 5; y <=55*5; y+=55)
  {
    for(int x = 5; x <= 55*5; x+=55)
    {
    rect(x, y, 55, 55, 7);
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    //your code here
  }
}
