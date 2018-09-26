void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dx, dy;
  Die(int x, int y) //constructor
  {
    dx = x;
    dy = y;
  }
  void roll()
  {
    
    
  }
  void show()
  {
    fill(255,255,255);
    rect(dx, dy, 50,50,7);
    int num = (int)(Math.random()*6)+1;
    if (num == 1)
    {
      fill(0);
      ellipse(dx+28,dy+28,9,9);
    } else if (num == 2)
    {
      fill(0);
      
    
  }
  }
