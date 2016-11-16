class Bar {
  float x, y, w, h;
  color c;
  String desc;

  boolean on = false;

  Bar(float tempX, float tempY, float tempW, float tempH, color tempC, String descR) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    c = tempC;
    desc = descR;
  }

  void display() {
    fill(c);//yellow awake
    rect(x, y, w, h);

    if (on) {
      fill(0);
      textAlign(CENTER);
      text(desc, x, y-10);
    }
  }

  void mouseOver(float mx, float my) {
    float d = dist(mx, my, x, y);
    if (d < 5) {
      on = true;
    } else {
      on = false;
    }
  }
}