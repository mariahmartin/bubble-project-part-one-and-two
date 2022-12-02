Bubble [] bubbleGroup;

ArrayList <Bubble> bubbleGroupAL;

int numBubbles = 500;
int bubbleCounter = 20;
int bps = 5;
int bc = 0;

//setup for normal array
/*
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
 */

//setup for array list
void setup()
{
  size(500, 700);
  frameRate(30);
  //bubbleGroup = new Bubble[numBubbles];
  bubbleGroupAL = new ArrayList <Bubble>();
  for (int i=0; i < numBubbles; i++)
  {
    bubbleGroupAL.add(new Bubble());
    bc ++;
  }
}

//draw for array
/*
void draw()
 {
 background(255);
 for (int i=0; i<bubbleGroup.length; i++)
 {
 bubbleGroup[i].rise_wiggle();
 bubbleGroup[i].show();
 }
 }
 */

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
}


/*
void draw()
 {
 background(255);
 int startI = 0;
 int endI = bps;
 for (int j = 0; j< bubbleGroupAL.size(); j++)
 {
 startI+=2;
 endI +=2;
 
 
 for (int i=startI; i<endI; i++)
 {
 bubbleGroupAL.get(i).rise_wiggle();
 bubbleGroupAL.get(i).show();
 }
 }
 }
 */
