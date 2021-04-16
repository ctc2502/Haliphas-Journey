void Level00() {
  image(Background00, 0, 0);
    for(int i = 0; i < HR.length; i++) {
     HR[i].fall();
    }
 
    typeWrite("Press any key to continue...", width/2, height/2);
}

void rainHit() {
  for (RainDrop rd : listRain) {
        rd.display();
      if (player.Hitbox(rd)) {
       player.xpos = 100;
       attempts += 1;
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
    }
    if (cooldown == 30) {
      xspeed = 10;
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
