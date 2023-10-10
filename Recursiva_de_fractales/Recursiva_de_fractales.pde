int levels = 5;

void setup() {
  size(800, 800);
  background(255);
  stroke(0);
  noLoop();
}

void draw() {
  float startX = width / 4;
  float startY = height * 3 / 4;
  float endX = width / 4 * 3;
  float endY = height * 3 / 4;
  koch(startX, startY, endX, endY, levels);
}

void koch(float x1, float y1, float x5, float y5, int level) {
  if (level == 0) {
    line(x1, y1, x5, y5);
  } else {
    float deltaX = (x5 - x1) / 3;
    float deltaY = (y5 - y1) / 3;
    float x2 = x1 + deltaX;
    float y2 = y1 + deltaY;
    float x3 = 0.5 * (x1 + x5) + sqrt(3) * (y1 - y5) / 6;
    float y3 = 0.5 * (y1 + y5) + sqrt(3) * (x5 - x1) / 6;
    float x4 = x1 + 2 * deltaX;
    float y4 = y1 + 2 * deltaY;
    koch(x1, y1, x2, y2, level - 1);
    koch(x2, y2, x3, y3, level - 1);
    koch(x3, y3, x4, y4, level - 1);
    koch(x4, y4, x5, y5, level - 1);
  }
}
