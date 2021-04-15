void Level02() {
  //background(144,255,9);
    image(Baggrund02, 0, 0);
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
    if (!platform1.rammerDen(rd) && !platform3.rammerDen(rd) && !platform4.rammerDen(rd) && !platform5.rammerDen(rd) && !platform6.rammerDen(rd) && !platform7.rammerDen(rd) && !platform8.rammerDen(rd) && !platform9.rammerDen(rd)) {
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
       
       comp02();
}

void comp02() {
       sky2.display(200, width-200, 15);
       sky2.regn(10000, 0);
       /*
       sky4.display(400, 450);
       sky4.regn(10000, 5000);
       
       sky5.display(700, 750);
       sky5.regn(10000, 5000);
       
       sky6.display(1000, 1050);
       sky6.regn(10000, 5000);
       
       sky7.display(1300, 1350);
       sky7.regn(10000, 5000);
       
       sky8.display(1600, 1650);
       sky8.regn(10000, 5000);*/
       
       /*
       platform1.display();
       platform3.display();
       platform4.display();
       platform5.display();
       platform6.display();
       platform7.display();
       platform8.display();
       platform9.display();
       */ 
       
       text("Attempts:" + attempts, 50, 50);
}
