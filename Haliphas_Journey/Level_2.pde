void Level02() {
    imageMode(0);
    image(Background[2], 0, 0);
    player.show();
      for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd) && !platform3.rammerDen(rd) && !platform4.rammerDen(rd) && !platform5.rammerDen(rd) && !platform6.rammerDen(rd) && !platform7.rammerDen(rd) && !platform8.rammerDen(rd) && !platform9.rammerDen(rd)) {
      rd.move();
    } if (rd.posRain.y > height ) rd.udenfor = true;
      }
      for (CoolDrop cd : listCool) {
    cd.display();
    if (!platform1.rammerDen(cd)) {
      cd.move();
    } if (cd.posRain.y > height ) cd.udenfor = true;
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
       
       UI();
       
       //platformen
       fill(50);
       platform1.display();
       safeRoom("...Downpour comes in many forms\nSome are simply stunning, others are DESTRUCTIVE");
}
