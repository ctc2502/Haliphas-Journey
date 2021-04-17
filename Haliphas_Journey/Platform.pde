class Platform {
    int h;
    int w;
    int x; 
    int y;
    
    Platform(int X, int Y, int W, int H) {
    x = X;
    y = Y;
    w = W;
    h = H;
    }
    
    void display() {
      rect(x, y, w, h);
    }

    boolean rammerDen(RainDrop rd) {
      boolean indenforX = rd.posRain.x >= x && rd.posRain.x <=  x + w;
      boolean indenforY = rd.posRain.y >= y && rd.posRain.y <= y + h;

      return indenforX && indenforY;
    }
  }
