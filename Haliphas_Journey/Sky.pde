 class Sky {
    PVector posSky; 
    int velo = 10;
    boolean leftright = false;
    int lastMillis=0;
    int milli = 50;
    
    Sky(PVector POS) {
     posSky = POS;
    }

    void regn() {
      /*lastMillis += milli;
      if (lastMillis > RainON) {
        lastMillis = 0;
      }*/
      
      if (random(0, 1)< 0.5) {
        RainDrop rd = new RainDrop();
        rd.startRain((int)posSky.x, (int)posSky.y);
        listRain.add(rd);
      }
    }
    void display(int start, int end) {
      movement(start, end);
      image(cloud0, posSky.x-250, posSky.y-250);
    }
    
    void movement(int start, int end) {
  if (posSky.x >= start && leftright == false) {
      posSky.x += velo;
    } else if (leftright == true) {
      posSky.x -= velo;
    }
    
    if (posSky.x >= end) {
      leftright = true;
    } else if (posSky.x == start) {
      leftright = false;
    }
  }
  }
