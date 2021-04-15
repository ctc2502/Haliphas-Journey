 class Sky {
    PVector posSky;
    boolean leftright = false;
    int lastMillis=0;
    int milli = 50;
    
    Sky(PVector POS) {
    posSky = POS;
    }



    void regn(int RainON, int RainOFF) {
      lastMillis += milli;
      if (lastMillis > RainON) {
        lastMillis = 0;
      }
      
      if(lastMillis > RainOFF) { 
      if (random(0, 1) < 5) {
        RainDrop rd = new RainDrop();
        rd.startRain((int)posSky.x, (int)posSky.y);
        listRain.add(rd);
        }
      }
    }
    void display() {
      //movement(400, 400);
      image(cloud0, posSky.x, posSky.y);
      println(lastMillis);
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
