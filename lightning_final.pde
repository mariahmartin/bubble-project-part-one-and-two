int startX = width/2;
int startY = 0;
int endX = width/2;
int endY = 0;
int a = 0;
void setup()
{
  size(600, 600);
  strokeWeight(4);
  background(0, 0, 0);
}
void draw() 
{
  stroke( (int)(Math.random()*100), (int)(Math.random()*150),(int)(Math.random()*255), a);
  while (endY<height) {
    endX = startX + ((int)(Math.random()*18)-9);
    endY = startY + (((int)(Math.random()*9)));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    rect(width/2.5, 0, width/5, 10);
  }
}
void mousePressed()
{
  
  startX = width/2;
  startY = 0;
  endX = width/2;
  endY = 0;
  a = (int)(Math.random()*255);
}
