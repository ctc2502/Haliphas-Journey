void Level01() {
    imageMode(0);
    image(Background[1], 0, 0);
    player.show();
    
    for (RainDrop rd : listRain) {
    rd.display();
    if (!platform2.rammerDen(rd) && !platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRain.y > height ) rd.udenfor = true;
      }
      
    rainHit();
    
    comp01();
}

void comp01(){
    
    
    //skyer
    sky1.display(1430, 1450, 5, cloud[3]);
    sky1.regn(10000, 5000, 0);
    
    UI();

    //platformen
    fill(50);
    platform1.display();
    safeRoom("W, A & D to navigate through the rain...");
}

void UI() {
  
    if (hcMode == false) {
    fill(255);
    text("Attempts:" + attempts, 50, 50);
    text("Time: "+swt.hour()+":"+swt.minute()+":"+swt.second(), 50, 150);
    }
    
    if (hcMode == true) {
    fill(255);
    text("Durability:" + durability, 50, 50);
    text("Times till 3 mins: "+ swt.minute()+":"+swt.second(), 50, 150);
    println(swt.minute());
    if (durability == 0 || swt.minute() == 3) {
        Phase = -5;
      }
    }
}
