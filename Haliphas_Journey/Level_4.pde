void Level04() {
  imageMode(0);
  image(Background[4], 0, 0);
  player.show();
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRain.y > height ) rd.udenfor = true;
      }
      
     rainHit();
  comp04();
}

void comp04() {
       //skyer
       sky4.display(400, 450, 10, cloud[3]);
       sky4.regn(10000, 5000, 0);
       
       sky5.display(700, 750, 10, cloud[3]);
       sky5.regn(10000, 5000, 0);
       
       sky6.display(1000, 1050, 10, cloud[3]);
       sky6.regn(10000, 5000, 0);
       
       sky7.display(1300, 1350, 10, cloud[3]);
       sky7.regn(10000, 5000, 0);
       
       sky8.display(1600, 1650, 10, cloud[3]);
       sky8.regn(10000, 5000, 0);
       
       UI();
       
       //platformen
       fill(50);
       platform1.display();
       safeRoom("Is this the work of global warming?");
}
