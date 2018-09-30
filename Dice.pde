void setup(){
  noLoop();
  size(700,700);
}
void draw(){
  background(0,255,0);
  int count = 0;
  for (int x=100;x<width-100;x=x+100) 
  {
    for (int y=100;y<height-100;y=y+100)
    {
      Die din = new Die(x,y);
      din.show();
      count += din.num;
    }
  }
  fill(0);
  text("Total dots: " + count, width/2, 590);
}
void mousePressed()
{
  redraw();
}
class Die
{ //models one single dice cube
  int mySize, myX, myY, num;
  Die(int x, int y) 
  { // the class' constructor
    //variable initializations here
    myX = x;
    myY = y;
    mySize = 25;
    roll();
  }
  void roll()
  {
    num = (int)(Math.random()*6)+1;
  }
  void show()
  {
    fill(0,0,0);
    rect(myX,myY,mySize,mySize);
    fill(255);
    if (num == 1) 
    {
      ellipse(myX+mySize/2,myY+mySize/2,5,5);
    }
    else if (num == 2)
    {
      ellipse(myX+mySize/4,myY+mySize/4,5,5);
      ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
    }
    else if (num == 3) 
    {
      ellipse(myX+mySize/4,myY+mySize/4,5,5);
      ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
      ellipse(myX+mySize/2,myY+mySize/2,5,5);
    }
    else if (num == 4)
    {
      ellipse(myX+mySize/4,myY+mySize/4,5,5);
      ellipse(myX+mySize/4,myY+3*mySize/4,5,5);
      ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
      ellipse(myX+3*mySize/4,myY+mySize/4,5,5);

    }
    else if (num == 5) 
    {
      ellipse(myX+mySize/4,myY+mySize/4,5,5);
      ellipse(myX+3*mySize/4,myY+3*mySize/4,5,5);
      ellipse(myX+mySize/2,myY+mySize/2,5,5);
      ellipse(myX+mySize/4,myY+3*mySize/4,5,5);
      ellipse(myX+3*mySize/4,myY+mySize/4,5,5);
    }
    else 
    { 
      ellipse(myX+4*mySize/12,myY+mySize/4,5,5);
      ellipse(myX+4*mySize/12,myY+2*mySize/4,5,5);
      ellipse(myX+4*mySize/12,myY+3*mySize/4,5,5);

      ellipse(myX+9*mySize/12,myY+mySize/4,5,5);
      ellipse(myX+9*mySize/12,myY+2*mySize/4,5,5);
      ellipse(myX+9*mySize/12,myY+3*mySize/4,5,5);
    }
  }
}
