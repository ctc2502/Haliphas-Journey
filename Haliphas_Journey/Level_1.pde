void Level01() {
  //background(244,200,189);
    image(Background[1], 0, 0);
    player.show();
    
    for (RainDrop rd : listRain) {
    rd.display();
    if (!platform2.rammerDen(rd) && !platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
    rainHit();
    
    comp01();
}

void comp01(){
    
    
    //skyer
    sky1.display(1430, 1450, 5, cloud[3]);
    sky1.regn(10000, 5000, 0);
    
    fill(255);
    text("Attempts:" + attempts, 50, 50);
    text("Time: "+swt.hour()+":"+swt.minute()+":"+swt.second(), 50, 150);

    //platformen
    fill(50);
    platform1.display();
    safeRoom("W, A & D to navigate through the rain...");
}
