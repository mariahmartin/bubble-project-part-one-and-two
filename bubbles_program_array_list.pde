Bubble [] bubbleGroup;

ArrayList <Bubble> bubbleGroupAL;

int numBubbles = 500;
int bubbleCounter = 20;
int bps = 5;
int bc = 0;

//setup for array list
void setup()
{
  size(500, 700);
  frameRate(30);
  bubbleGroupAL = new ArrayList <Bubble>();
  for (int i=0; i < numBubbles; i++)
  {
    bubbleGroupAL.add(new Bubble());
    bc ++;
  }
}

//draw for array list
void draw()
{
  background(255);
  for (int i=bubbleGroupAL.size()-1; i>=0; i--)
  {
    bubbleGroupAL.get(i).rise_wiggle();
    bubbleGroupAL.get(i).show();
    if (bubbleGroupAL.get(i).myY < 0)
    {
      bubbleGroupAL.remove(i);
    }
  }
  fill(0);
  textSize(25);
  textAlign(CENTER);
  text("The number of bubbles is " + (bubbleGroupAL.size()), width/2, height-30); //prints sum

}
