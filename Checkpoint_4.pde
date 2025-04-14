//Hysan Lee
//2-3
//Apr 11, 2024
color red = #F74B51;
color blue = #61D4E0;
void setup() {
 size (600, 600);
 car();
 
}

void draw() {
  
}

void car() {
  pushMatrix();
 translate(-50, -1100);
  scale(3);
  body(50, 450, 120, 75);
  front(170, 488, 50, 75);
  trunk(30, 505, 50, 525, 50, 450);
  window();
  tires();
  popMatrix();
}

void body(float x, float y, float w, float l) {
  fill(red);
  rect(x, y, w, l);
}

void front(float x, float y, float w, float l) {
  fill(red);
   arc(x, y, w, l, radians(-90), radians(90));
}
void trunk(float x1, float y1, float x2, float y2, float x3, float y3) {
  triangle(x1, y1, x2, y2, x3, y3);
}
void window() {
  fill(blue);
  arc(110, 450, 120, 120, radians(180), radians(360));
}
void tires() {
  
  //left wheel
  fill(0);
  ellipse(65, 525, 50, 50);
  stroke(255);
  strokeWeight(5);
  line(40, 525, 90, 525);
  line(65, 500, 65, 550);
  noStroke();
  
  

  //right wheel
  fill(0);
  ellipse(165, 525, 50, 50);
  stroke(255);
  strokeWeight(5);
  line(140, 525, 190, 525);
  line(165, 500, 165, 550);
  noStroke();
}
