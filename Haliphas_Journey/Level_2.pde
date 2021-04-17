void Level02() {
  //background(144,255,9);
    image(Background[2], 0, 0);
    player.show();
      for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd) && !platform3.rammerDen(rd) && !platform4.rammerDen(rd) && !platform5.rammerDen(rd) && !platform6.rammerDen(rd) && !platform7.rammerDen(rd) && !platform8.rammerDen(rd) && !platform9.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      for (CoolDrop cd : listCool) {
    cd.display();
    if (!platform1.rammerDen(cd)) {
      cd.move();
    } if (cd.posRegn.y > height ) cd.udenfor = true;
      }
  
  rainHit();
  coolHit();
      comp02();
      
}

void comp02() {
       sky3.display(200, width-200, 15, cloud[3]);
       sky3.regn(10000, 0, 0);
       
       sky2.display(250, 300, 5, cloud[1]);
       sky2.regn(5000, 2000, 1);
       
       fill(255);
       text("Attempts:" + attempts, 50, 50);
       text("Time: "+swt.hour()+":"+swt.minute()+":"+swt.second(), 50, 150);
       
       //platformen
       fill(50);
       platform1.display();
       safeRoom("...Downpour comes in many forms\nSome are simply stunning, others are DESTRUCTIVE");
}
