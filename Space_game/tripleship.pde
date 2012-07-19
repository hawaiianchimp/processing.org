class tripleship extends powerup
{
  tripleship(float xpos, float ypos, float xspeed, float yspeed)
  {
    super(xpos, ypos, xspeed, yspeed);

    this.xpos=xpos;
    this.ypos=ypos;
    this.xspeed=xspeed;
    this.yspeed=yspeed;
    this.xdirection=1;
    this.ydirection=1;
    this.powersize=20;
  }

  void move()
  {
    xpos=xpos+xspeed*xdirection;
    ypos=ypos+yspeed*ydirection;
  }

  void display()
  {
    fill(52, 135, 129);
    rect(xpos, ypos, powersize+5, powersize+5);
    fill(255);
    triangle(xpos+2, ypos+powersize, xpos+2+powersize/8, ypos+powersize/2, xpos+2+powersize/4, ypos+powersize);
    triangle(xpos+2+powersize/4, ypos+powersize, xpos+2+powersize/2, ypos, xpos+2+powersize*3/4, ypos+powersize);
    triangle(xpos+2+powersize*3/4, ypos+powersize, xpos+2+powersize*7/8, ypos+powersize/2, xpos+powersize+2, ypos+powersize);
  }
}

