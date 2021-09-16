void setup() {
  size(500, 500); 
  background(183, 147, 92);
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  boolean shift = true;
  for (int y = -28; y < 500; y+=30) {
    for (int x = -25; x < 500; x+=55)
    {
      if (shift == true)
        scale(x+27, y);
      else
        scale(x, y);
    }
    if (shift == true)
      shift = false;
    else
      shift = true;
  }
}
void scale(int x, int y) {
  fill(255, 0, 0);
  bezier(x, y-26, x-10, y-27, x-10, y, x-23, y);
  bezier(x, y-26, x+10, y-27, x+10, y, x+23, y);
  bezier(x, y+20, x-10, y+21, x-10, y-6, x-23, y);
  bezier(x, y+20, x+10, y+21, x+10, y-6, x+23, y);
}
