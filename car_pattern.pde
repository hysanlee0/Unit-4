void car(float x, float y) {
  pushMatrix();
  translate(x,y);
  scale(0.50);
  //scale(random(0.25, 0.75));
  noStroke();
  body(0, 0, 120, 75); //-50, -450
  front(120, 38, 50, 75);
  trunk(-20, 55, 0, 75, 0, 0);
  window(60, 0, 120);
 leftTire(15, 75, 50);
 rightTire(115, 75, 50);
 popMatrix();
}

void body(float x, float y, float w, float l) {
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(x, y, w, l);
}

void front(float x, float y, float w, float l) {
 fill(random(0, 255), random(0, 255), random(0, 255));
   arc(x, y, w, l, radians(-90), radians(90));
}
void trunk(float x1, float y1, float x2, float y2, float x3, float y3) {
  fill(random(0, 255), random(0, 255), random(0, 255));
  triangle(x1, y1, x2, y2, x3, y3);
}
void window(float x, float y, float r) {
  fill(random(0, 255), random(0, 255), random(0, 255));
  arc(x, y, r, r, radians(180), radians(360));
}
void leftTire(int x, int y, int r) {
  fill(0);
  ellipse(x, y, r, r);
  stroke(255);
  strokeWeight(5);
  line(x-25, y, x+25, y);
  line(x, y-25, x, y+25);
  noStroke();
}
void rightTire(int x, int y, int r) {
  fill(0);
  ellipse(x, y, r, r);
 stroke(255);
  strokeWeight(5);
  line(x-25, y, x+25, y);
  line(x, y-25, x, y+25);
  noStroke();
}
