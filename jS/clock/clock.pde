
// Clock
// SCALE DOWN all dimensions

void setup() {
  size(400, 400);
}

void draw() {
  background(247, 241, 222);
  translate(200, 200);
  rotate(-HALF_PI);
  
  int hr = hour();
  int mn = minute();
  int sc = second();

  strokeWeight(8);
  stroke(50, 46, 32);
  noFill();
  float secondAngle = map(sc, 0, 60, 0, TWO_PI);
  arc(0, 0, 300, 300, 0, secondAngle);

  stroke(142,79,224);
  float minuteAngle = map(mn, 0, 60, 0, TWO_PI);
  arc(0, 0, 280, 280, 0, minuteAngle);


  stroke(127, 209, 174);
  float hourAngle = map(hr % 12, 0, 12, 0, TWO_PI);
  arc(0, 0, 260, 260, 0, hourAngle);

  pushMatrix();
  rotate(secondAngle);
  stroke(50, 46, 32);
  line(0, 0, 100, 0);
  popMatrix();

  pushMatrix();
  rotate(minuteAngle);
  stroke(142,79,224);
  line(0, 0, 75, 0);
  popMatrix();

  pushMatrix();
  rotate(hourAngle);
  stroke(127, 209, 174);
  line(0, 0, 50, 0);
  popMatrix();

  stroke(255);
  point(0, 0);

  //  fill(255);
  //  noStroke();
  //  text(hr + ':' + mn + ':' + sc, 10, 200);

 }
