//Skyer
Sky sky1 = new Sky(new PVector(1430, 500));

Sky sky2 = new Sky(new PVector(350, 500));
Sky sky3 = new Sky(new PVector(800, 500));

Sky sky4 = new Sky(new PVector(400, 475));
Sky sky5 = new Sky(new PVector(700, 500));
Sky sky6 = new Sky(new PVector(1000, 490));
Sky sky7 = new Sky(new PVector(1300, 475));
Sky sky8 = new Sky(new PVector(1600, 500));

Sky sky9 = new Sky(new PVector(500, 275));
Sky sky10 = new Sky(new PVector(750, 300));
Sky sky11 = new Sky(new PVector(250, 490));

Sky sky12 = new Sky(new PVector(410, 490));
Sky sky13 = new Sky(new PVector(1230, 490));
Sky sky14 = new Sky(new PVector(500, 100));

//Platforme
Platform platform1 = new Platform(0, 800, 200, 10);
Platform platform2 = new Platform(0, 510, 1335, 10);
Platform platform3 = new Platform(420, 825, 150, 10);
Platform platform4 = new Platform(695, 825, 150, 10);
Platform platform5 = new Platform(800, 825, 150, 10);
Platform platform6 = new Platform(1015, 825, 150, 10);
Platform platform7 = new Platform(1260, 825, 150, 10);
Platform platform8 = new Platform(1470, 825, 150, 10);
Platform platform9 = new Platform(1760, 825, 150, 10);

Platform platform10 = new Platform(900, 800, 100, 10);
Platform platform11 = new Platform(720, 825, 150, 10);
Platform platform12 = new Platform(1080, 825, 150, 10);

void rainHit() {
  for (RainDrop rd : listRain) {
        rd.display();
      if (player.Hitbox(rd)) {
       player.xpos = 100;
       attempts += 1;
       pettypts = 0;
       subcnt = 0;
       if (hcMode == true) {
          durability--;
          }
        }
      }
      
     for (int i = listRain.size()-1; i > 0; i--) {
    if (listRain.size() > 0) {
      RainDrop rd = listRain.get(i);
      if (rd.udenfor) {
        listRain.remove(rd);
        //print("fjern!!!!");
      } 
    }
  }
}

void coolHit() {
  for (CoolDrop cd : listCool) {
        cd.display();
      if (player.Hitbox(cd)) {
       xspeed = 0;
       cooldown = 0;
        }
      }
    if (cooldown < 30) {
      cooldown++;
      text(1/cooldown, player.xpos, player.ypos);
    }
    if (cooldown == 30) {
      xspeed = 8;
    }
    
    for (int i = listCool.size()-1; i > 0; i--) {
    if (listCool.size() > 0) {
      CoolDrop cd = listCool.get(i);
      if (cd.udenfor) {
        listCool.remove(cd);
        //print("fjern!!!!");
      } 
    }
  }
}

void petsHit() {
  for (PetDrop pd : listPets) {
        pd.display();
      if (player.Hitbox(pd)) {
        if (pettypts < 3) {
         pettypts++;
          }
        }
    }

    for (int i = listPets.size()-1;   i > 0; i--) {
    if (listPets.size() > 0) {
      PetDrop pd = listPets.get(i);
      if (player.Hitbox(pd) || pd.udenfor) {
        listPets.remove(pd);
      }
    }
  } 
}
