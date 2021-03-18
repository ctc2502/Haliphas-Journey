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
