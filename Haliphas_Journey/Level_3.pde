void Level03() {
  //background(44,22,200);
  image(Background03, 0, 0);
  player.show();
  for (RainDrop rd : listRain) {
        rd.display(0);
      if (player.Hitbox(rd)) {
       player.xpos = 100;
       attempts += 1;
        }
      }
      
      for (RainDrop rd : listRain) {
    rd.display(0);
    if (!platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
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
  comp03();
}

void comp03() {
       sky3.display(400, 450, 10);
       sky3.regn(10000, 5000);
       
       sky4.display(700, 750, 10);
       sky4.regn(10000, 5000);
       
       sky5.display(1000, 1050, 10);
       sky5.regn(10000, 5000);
       
       sky6.display(1300, 1350, 10);
       sky6.regn(10000, 5000);
       
       sky7.display(1600, 1650, 10);
       sky7.regn(10000, 5000);
       
       text("Attempts:" + attempts, 50, 50);
}
