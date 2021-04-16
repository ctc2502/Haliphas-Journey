void Level04() {
  //background(44,22,200);
  image(Background03, 0, 0);
  player.show();
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
     rainHit();
  comp03();
}

void comp03() {
       sky3.display(400, 450, 10);
       sky3.regn(10000, 5000, 0);
       
       sky4.display(700, 750, 10);
       sky4.regn(10000, 5000, 0);
       
       sky5.display(1000, 1050, 10);
       sky5.regn(10000, 5000, 0);
       
       sky6.display(1300, 1350, 10);
       sky6.regn(10000, 5000, 0);
       
       sky7.display(1600, 1650, 10);
       sky7.regn(10000, 5000, 0);
       
       text("Attempts:" + attempts, 50, 50);
}
