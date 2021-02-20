private int lim = 200;

public void setup()
{
  size(1000, 1000);
}
public void draw()
{
  background(204);
  fractal(-lim * sqrt(3)/4, lim-lim*3/4, lim);
}
public void mouseDragged()//optional
{
  if (mouseX > 1){
    lim = mouseX;
  }
}
public void fractal(float x, float y, float len) 
{
  translate(x + len * sqrt(3)/4, y-len+len*3/4);
  rect(0, 0, len, len);
  rotate(radians(30));
  if (len < 12){
    return;
  }else {
    fractal(0, 0, 2*(len/(1+sqrt(3))));
  }
}
