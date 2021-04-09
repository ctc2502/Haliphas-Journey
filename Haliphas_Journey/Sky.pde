 class Sky {
    PVector posSky = new PVector(400, 100);  
    boolean leftright = false;
    
    Sky() {
    }

    void regn() {
      if (random(0, 1)< 0.5) {
        RainDrop rd = new RainDrop();
        rd.startRain((int)posSky.x, (int)posSky.y);
        listRain.add(rd);
      }
    }
    void display() {
      movement(400, 600);
      image(cloud0, posSky.x-250, posSky.y-250);
    }
    
    void movement(int start, int end) {
  if (posSky.x >= start && leftright == false) {
      posSky.x++;
    } else if (leftright == true) {
      posSky.x--;
    }
    
    if (posSky.x >= end) {
      leftright = true;
    } else if (posSky.x == start) {
      leftright = false;
    }
  }
  }
