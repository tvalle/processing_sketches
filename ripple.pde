// Ripple effect using sine wave

int sphereSize = 10;
int sphereSpace = 30;

void setup() {
  size(400, 400, P3D);
  noStroke();

  camera(width/2, height*1.2, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);
}

void draw() {
  clear();

  int totalX = width / (sphereSize + sphereSpace);
  int totalY = height / (sphereSize + sphereSpace);

  for (int i = 0; i <= totalY; i++)
  {
    for (int j = 0; j <= totalX; j++)
    {
      pushMatrix();
      
      float len = dist(j, i, totalX / 2, totalY /2);
      float time = frameCount * 0.1;
      
      translate(
        j * (sphereSize + sphereSpace),
        i * (sphereSize + sphereSpace),
        cos(len + time) * 24);
      sphere(sphereSize);
      popMatrix();
    }
  }
}
