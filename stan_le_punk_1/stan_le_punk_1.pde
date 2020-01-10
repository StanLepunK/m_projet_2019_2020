int col = 10;
int row = 2;
void setup() {
  // size(640,480);
  fullScreen(1);
}


void draw() {
  //bg(0, 10);
  float rouge = abs(sin(frameCount *0.01) * g.colorModeX);
  float vert = abs(sin(frameCount *0.02) * g.colorModeY);
  float bleu = abs(sin(frameCount *0.04) * g.colorModeZ);
  float epaisseur = map(mouseX,0,width, 1,10);
  super_rendu(rouge, vert, bleu,epaisseur);
  
}

void super_rendu(float red, float green, float blue, float thickness) {
  stroke(red,green,blue);
  if(thickness < 0) {
    strokeWeight(0.1);
  } else {
    strokeWeight(thickness);
  }
  
  float rx = abs(sin(frameCount * 0.01)) * width;
  float ry = abs(sin(frameCount * 0.02)) * height;
  for(int x = 1 ; x < col ; x++) {
    for(int y = 1 ; y < row ; y++) {
      line(x * rx, 0, x * rx, height);
      line(0, y * ry, width, y * ry); 
    }
  }
}


void bg(float g, float a) {
  noStroke();
  fill(g,a);
  rect(0,0,width, height);
}
