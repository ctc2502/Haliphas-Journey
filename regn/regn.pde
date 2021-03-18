Sky sky1 = new Sky();


Platform platform1 = new Platform();


ArrayList<RainDrop> listRain = new ArrayList<RainDrop>();



void setup() {
  size(800, 800);
}

void draw() {
  clear();

  //Regnen regner på platforme
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd))
      rd.move();

    //println(listRain.size());

    if (rd.posRegn.y > height ) rd.udenfor = true;
  }

  for (int i = listRain.size()-1; i > 0; i--) {
    if (listRain.size() > 0) {
      RainDrop rd = listRain.get(i);
      if (rd.udenfor) {
        listRain.remove(rd);
        print("fjern!!!!");
      }
    }
  }



    //skyen
    sky1.display();
    sky1.move(mouseX, mouseY);
    sky1.regn();

    //platformen
    platform1.display();
  
}


  class Platform {
    int hojde = 10;
    int bredde = 100;
    int x=400, y=400;

    void display() {
      rect(400, 400, bredde, hojde);
    }

    boolean rammerDen(RainDrop rd) {
      boolean indenforX = rd.posRegn.x >= platform1.x && rd.posRegn.x <=  platform1.x + platform1.bredde;
      boolean indenforY = rd.posRegn.y >= platform1.y && rd.posRegn.y <= platform1.y + platform1.hojde;

      return indenforX && indenforY;
    }
  }




  class Sky {
    PVector posSky = new PVector(10, 10);  

    void move(int x, int y) {
      posSky.set(x, y);
    }

    void regn() {
      if (random(0, 1)< 0.5) {
        RainDrop rd = new RainDrop();
        rd.startRain((int)posSky.x, (int)posSky.y);
        listRain.add(rd);
      }
    }


    void display() {
      displaySky();
    }

    void displaySky() {
      rect(posSky.x, posSky.y, 100, 100);
    }
  }



  class RainDrop {
    PVector posRegn  = new PVector(-10, -10);  
    int speedRegn = 0;
    boolean udenfor= false;

    void startRain(int x_sky, int y_sky) {
      posRegn.x =  x_sky + random(0, 100);
      posRegn.y =  y_sky+ random(0, 100);
      speedRegn= (int)random(1, 3.0);
    }

    void move() {
      posRegn.y = posRegn.y + speedRegn;
    }

    void display() {
      ellipse(posRegn.x, posRegn.y, 10, 10);
    }
  }
