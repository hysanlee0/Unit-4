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
  body(50, 450, 120, 75);
  front(170, 488, 50, 75);
 
 //trunk
  triangle(30, 505, 50, 525, 50, 450);
  
  //window
  fill(blue);
  arc(110, 450, 120, 120, radians(180), radians(360));
}

void body(float x, float y, float w, float l) {
  fill(red);
  rect(x, y, w, l);
}

void front(float x, float y, float w, float l) {
  fill(red);
   arc(x, y, w, l, radians(-90), radians(90));
}

void tires(int carX, int carY, int spin) {
  pushMatrix();
  translate(carX, carY);

  //left wheel
  pushMatrix();
  translate(65, 525);
  rotate(radians(spin));

  fill(0);
  ellipse(0, 0, 50, 50);
  stroke(255);
  strokeWeight(5);
  line(-25, 0, 25, 0);
  line(0, -25, 0, 25);
  noStroke();
  rotate(radians(spin));
  popMatrix();

  //right wheel
  pushMatrix();
  translate(165, 525);
  rotate(radians(spin));
  fill(0);
  ellipse(0, 0, 50, 50);
  stroke(255);
  strokeWeight(5);
  line(-25, 0, 25, 0);
  line(0, -25, 0, 25);
  noStroke();
  popMatrix();
  popMatrix();
