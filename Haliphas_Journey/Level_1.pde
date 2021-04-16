void Level01() {
  //background(244,200,189);
    image(Background01, 0, 0);
    player.show();
    
    for (RainDrop rd : listRain) {
    rd.display();
    if (!platform2.rammerDen(rd) && !platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
    rainHit();
    
    comp01();
    
    safeRoom("W, A & D to navigate through the rain...");
}

void comp01(){
    //platformen 
    platform1.display();
    //platform2.display();
    //ground0.display();
    
    //skyer
    sky1.display(1430, 1450, 5);
    sky1.regn(10000, 5000, 0);
    
    /*sky2.display(200, width-200);
    sky2.regn(10000, 0);*/
    
    /*sky3.display(200, width-200);
    sky3.regn(10000, 0); */
    
    text("Attempts:" + attempts, 50, 50);
}
