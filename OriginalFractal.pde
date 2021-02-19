public void setup()
{
  size(500,500);
  background(0);
  frameRate(3);
}
public void draw()
{
  fractalColor(125, 125, 250);
  fractalColor(125, 375, 250);
  fractalColor(375, 125, 250);
  fractalColor(375, 375, 250);
}
public void keyPressed()
{
  if(key==' ')
  {
    fractalNoColor(125, 125, 250, (int)(Math.random()*256));
    fractalNoColor(125, 375, 250, (int)(Math.random()*256));
    fractalNoColor(375, 125, 250, (int)(Math.random()*256));
    fractalNoColor(375, 375, 250, (int)(Math.random()*256));
  }
}
public void fractalColor(int x, int y, int size)
{
  int shade = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  fill(shade);
  ellipse(x, y, size, size);
  if(size > 100)
  {
    fractalColor(x + size/2, y, size/2);
    fractalColor(x, y + size/2, size/2);
    fractalColor(x - size/2, y, size/2);
    fractalColor(x, y - size/2, size/2);
  }
}
public void fractalNoColor(int x, int y, int size, int shade)
{
  shade = (int)(Math.random()*256);
  fill(shade);
  ellipse(x, y, size, size);
  if(size > 100)
  {
    fractalNoColor(x + size/2, y, size/2, shade);
    fractalNoColor(x, y + size/2, size/2, shade);
    fractalNoColor(x - size/2, y, size/2, shade);
    fractalNoColor(x, y - size/2, size/2, shade);
  }
}
