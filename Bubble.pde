class Bubble
{
  // properties of class Bubble
  int myX;
  int myY;
  int myDia;
  int[] bColor; // length is 4 for R,G,B and transparency

  Bubble() // constructor assigns values to properties
  {
    myX = (int)(Math.random()*width);
    //myY = height;
    myY = (int)(Math.random()*height*2);
    myDia = (int)(Math.random()*70)+30;
    bColor = new int[4];
    for (int i =0; i < bColor.length; i++)
    {
      // sets each index of bColor to int 0-255
      bColor[i] = (int)(Math.random()*255);
    }
  }

  void show()
  {
    noStroke();
    fill(bColor[0], bColor[1], bColor[2], bColor[3]);
    ellipse(myX, myY, myDia, myDia);
  }

  void rise_wiggle()
  {
    float rFactor = 0.03;
    float r = myDia * rFactor + ((float)Math.random());
    int w = (int)(Math.random()*5)-2;
    myX += w;
    myY -= r; // needs to change to be rtandom but still influenced by size
  
}
} 
