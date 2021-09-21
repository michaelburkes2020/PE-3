//[full] Variables for location and speed of ball.
float x = 100;
float y = 100;
float xspeed = 1;
float yspeed = 3.3;
//[end]

//[full] Remember how Processing works?  setup() is executed once when the sketch starts and draw() loops forever and ever (until you quit).
void setup() {
  size(640,360);
  background(255);
}
//[end]

void draw() {
  background(255);

  //[full] Move the ball according to its speed.
  x = x + xspeed;
  y = y + yspeed;
  //[end]

  //[full] Check for bouncing.
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;
  }
  //[end]

  stroke(0);
  fill(175);
  // Display the ball at the location (x,y).
  ellipse(x,y,16,16);
}
