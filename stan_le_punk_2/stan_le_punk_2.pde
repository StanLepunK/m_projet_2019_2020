float rx = 0;
float rz = 0;

float sx = 10;
float sy = 10;
float sz = 10;

void setup() {
  fullScreen(P3D, 1);
  // size(640,480,P3D);
}


void draw() {
  // background(0);
  noFill();
  stroke(abs(sin(frameCount * 0.02) *g.colorModeX));
  rx += 0.01;
  rz += 0.01;

  sx = abs(sin(frameCount * 0.02) *width) +50;
  sy = abs(sin(frameCount * 0.01) *width) +50;
  sz = abs(sin(frameCount * 0.03) *width) +50;

  push();
  translate(width/2,height/2,-height);
  rotateX(rx);
  rotateZ(rz);
  box(sx,sy,sz);
  pop();
}

