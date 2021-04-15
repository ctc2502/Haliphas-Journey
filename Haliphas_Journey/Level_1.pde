void Level01() {
  //background(244,200,189);
    image(Background01, 0, 0);
    
    println(cooldown);
    player.show();
    
    for (RainDrop rd : listRain) {
    rd.display(0);
    if (!platform2.rammerDen(rd) && !platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
      for (RainDrop rd : listRain) {
        rd.display(0);
      if (player.Hitbox(rd)) {
       player.xpos = 100;
       attempts += 1;
       
       /*xspeed = 0;
       cooldown = 0;*/
        }
      }
    /*
    if (cooldown < 30) {
      cooldown++;
    }
    
    if (cooldown == 30) {
      xspeed = 10;
    } */
    
  for (int i = listRain.size()-1; i > 0; i--) {
    if (listRain.size() > 0) {
      RainDrop rd = listRain.get(i);
      if (rd.udenfor) {
        listRain.remove(rd);
        //print("fjern!!!!");
      } 
    }
  }
    comp01();
}

void comp01(){
    //platformen 
    platform1.display();
    //platform2.display();
    //ground0.display();
    
    //skyer
    sky1.display(1430, 1450, 5);
    sky1.regn(10000, 5000);
    
    /*sky2.display(200, width-200);
    sky2.regn(10000, 0);*/
    
    /*sky3.display(200, width-200);
    sky3.regn(10000, 0); */
    
    text("Attempts:" + attempts, 50, 50);
}
