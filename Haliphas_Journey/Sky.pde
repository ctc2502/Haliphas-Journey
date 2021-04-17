class Sky {
  PVector posSky; 
  boolean leftright = false;
  int lastMillis=0;
  int milli = 50;

  Sky(PVector POS) {
    posSky = POS;
  }

  void regn(int RainON, int RainOFF, int type) {
    lastMillis += milli;
    if (lastMillis > RainON) {
      lastMillis = 0;
    }

    if (type == 0) {
      if (lastMillis > RainOFF) {
        image(cloud[0], posSky.x-250, posSky.y-250);
        if (random(0, 1)< 0.5) {
          RainDrop rd = new RainDrop();
          rd.startRain((int)posSky.x, (int)posSky.y);
          listRain.add(rd);
        }
      }
    }
    if (type == 1) {
      if (lastMillis > RainOFF) { 
        if (random(0, 1)< 0.25) {
          CoolDrop cd = new CoolDrop();
          cd.startRain((int)posSky.x, (int)posSky.y);
          listCool.add(cd);
        }
      }
    }
    if (type == 2) {
      if (lastMillis > RainOFF) { 
        if (random(0, 50) < 5) {
          PetDrop pd = new PetDrop();
          pd.startRain((int)posSky.x, (int)posSky.y);
          listPets.add(pd);
        }
      }
    }
  }
  void display(int start, int end, int velo, PImage cloud) {
    movement(start, end, velo);
    image(cloud, posSky.x-250, posSky.y-250);
  }

  void movement(int start, int end, int velo) {
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
