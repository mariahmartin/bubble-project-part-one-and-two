Bubble [] bubbleGroup;

int numBubbles = 500;

//setup for normal array

void setup()
{
  size(500, 700);
  frameRate(30);
  bubbleGroup = new Bubble[numBubbles];
  for (int i=0; i < bubbleGroup.length; i++)
  {
    bubbleGroup[i] = new Bubble();
  }
}



//draw for array

void draw()
{
  background(255);
  for (int i=0; i<bubbleGroup.length; i++)
  {
    bubbleGroup[i].rise_wiggle();
    bubbleGroup[i].show();
  }
}
