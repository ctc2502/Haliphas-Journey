void Level04() {
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
    if (!platform1.rammerDen(rd) && !platform10.rammerDen(rd)) {
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
  comp04();
}

void comp04() {
       sky8.display(200, width-200, 15);
       sky8.regn(10000, 0);
       
       sky9.display(200, width-200, 10);
       sky9.regn(10000, 0);
       
       sky10.display(200, width-200, 10);
       sky10.regn(10000, 0);
       
       text("Attempts:" + attempts, 50, 50);
}