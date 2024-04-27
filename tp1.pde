PImage kiwi;
void setup() {
  size(800, 400);
  kiwi = loadImage("kiwi.jpg");
}

void draw() {
  println(mouseX, mouseY);
  background(255);
  line(400, 0, 400, 800);
  image(kiwi, 0, 0, 400, 400);
  fill(100, 66, 10);
  ellipse(780, 200, 200, 196);


  strokeWeight(5);
  stroke(100, 66, 10);
  fill(150, 180, 82);
  ellipse(780, 150, 160, 100);
  fill(150, 180, 82);
  ellipse(570, 205, 296, 283);


  noStroke();
  fill(147, 211, 105);
  ellipse(570, 205, 200, 190);
  ellipse(780, 150, 120, 80);
  fill(58, 77, 15);
  ellipse(570, 205, 125, 100);
  ellipse(780, 150, 80, 55);
  fill(209, 240, 140);
  ellipse(570, 205, 95, 80);
  ellipse(780, 150, 60, 35);


  fill(0);
  circle(500, 200, 5);
  circle(640, 200, 6);
  circle(560, 146, 5);
  circle(570, 266, 3);
  circle(510, 160, 5);
  circle(605, 250, 2);
  circle(520, 258, 5);
  circle(512, 230, 4);
  circle(520, 250, 5);
  circle(635, 235, 5);
  circle(600, 266, 5);
  circle(540, 258, 4);
  circle(597, 148, 5);
  circle(617, 247, 5);
  circle(623, 170, 4);
  circle(540, 157, 7);
  circle(646, 218, 5);
  circle(487, 228, 5);
  circle(511, 175, 5);
  circle(548, 271, 5);
  circle(583, 279, 5);
  circle(620, 260, 5);
  circle(583, 261, 5);
  circle(576, 140, 5);
  circle(626, 252, 4);
  circle(633, 175, 5);
  circle(617, 154, 5);
  circle(523, 145, 3);
  circle(649, 183, 5);
}
