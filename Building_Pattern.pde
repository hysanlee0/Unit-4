void building(float x, float y) {
  pushMatrix();
  translate(x, y);
  body(0, 0); //25, 100
  door(80, 275, 25, 50);
  popMatrix();
}

void body(float x, float y) {
  fill(buildingGrey);
  rect(x, y, 125, 325);
  fill(roadGrey);
  rect((x - 4), (y - 10), 133, 20, 50);
}

void door(float x, float y, float w, float h) {
  fill(red);
  rect(x, y, w, h);
}
