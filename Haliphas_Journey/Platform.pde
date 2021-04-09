class Platform {
    int h;
    int b;
    int x; 
    int y;
    
    Platform(int X, int Y, int B, int H) {
    x = X;
    y = Y;
    b = B;
    h = H;
    }
    
    void display() {
      rect(x, y, b, h);
    }

    boolean rammerDen(RainDrop rd) {
      boolean indenforX = rd.posRegn.x >= x && rd.posRegn.x <=  x + b;
      boolean indenforY = rd.posRegn.y >= y && rd.posRegn.y <= y + h;

      return indenforX && indenforY;
    }
  }
