void Level06() {
  image(Background06, 0, 0);
  player.show();
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd)) {
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
  comp06();
}

void comp06() {
       sky12.display(410, 710, 5);
       sky12.regn(10000, 5000, 0);
       
       sky13.display(1230, 1530, 10);
       sky13.regn(10000, 5000, 0);
       
       sky10.display(200, width-200, 10);
       sky10.regn(4000, 2000, 1);
       
       text("Attempts:" + attempts, 50, 50);
       platform1.display();
}
