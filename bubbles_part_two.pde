Bubble [] bubbleGroup;

ArrayList <Bubble> bubbleGroupAL;

int numBubbles = 500;
int bubbleCounter = 20;
int bps = 5;
int bc = 0;

//setup for array list
void setup()
{
  size(900, 700);
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
      //color filter: removes all non blue bubbles 
    } else if (
      (bubbleGroupAL.get(i).bColor[0] > 150)||
      (bubbleGroupAL.get(i).bColor[1] > 150)||
      (bubbleGroupAL.get(i).bColor[2]<180)
      )
    {
      if (bubbleGroupAL.get(i).myY < height/2)
        bubbleGroupAL.remove(i);
    }
  }
  fill(0);
  textSize(25);
  textAlign(CENTER);
  text("The number of bubbles is " + (bubbleGroupAL.size()), width/2, height-30); //prints sum
}
