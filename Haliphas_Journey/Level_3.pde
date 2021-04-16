void Level03() {
  //background(44,22,200);
  image(Background03, 0, 0);
  player.show();
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd) && !platform10.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
     rainHit();
      rainHit();
  comp04();
}

void comp04() {
       sky8.display(200, width-200, 10);
       sky8.regn(10000, 0, 0);
       
       sky9.display(200, width-200, 10);
       sky9.regn(10000, 0, 0);
       
       sky10.display(200, width-200, 10);
       sky10.regn(10000, 0, 0);
       
       text("Attempts:" + attempts, 50, 50);
}
