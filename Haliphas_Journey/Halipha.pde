class Halipha{
int r;
  float x, y, vy, tyngdekraften;
  Halipha() {
    r = 100;
    x = 50;
    y = height - r;
    vy = 0;
    tyngdekraften = 3;
    
  }

  void jump() {
    if (y == height - r) {
      vy = -35;
    }
  }


void Gravitation () {
    y += vy;
    vy += tyngdekraften;
    y = constrain(y, 0, height - r);
  }
  void move () {
    
  }

  void show() {
    image(Halipha, x, y, r, r);
     
     //fill(255, 50);
    // ellipseMode(CORNER);
   //  ellipse(x, y, r, r);
  }
}
