public void setup()
{
  frameRate(2);
  background(#1D0F48);
  noStroke();
  size(500,500);
}
public void draw()
{
  sierpinski(0, 500, 500);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
    triangle(x, y, x+len/2, y-len, x+len, y);
  else{
    float r = (float)(Math.random() * 101) + 105;
    float g = (float)(Math.random() * 101) + 100;
    float b = (float)(Math.random() * 101) + 150;
    fill(r,g,b);
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
