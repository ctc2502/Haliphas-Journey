void Level03() {
  //background(44,22,200);
  image(Background[3], 0, 0);
  player.show();
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd) && !platform10.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
      rainHit();
  comp03();
}

void comp03() {
       //skyer
       sky9.display(200, width-200, 10, cloud[3]);
       sky9.regn(10000, 0, 0);
       
       sky10.display(200, width-200, 10, cloud[3]);
       sky10.regn(10000, 0, 0);
       
       sky11.display(200, width-200, 10, cloud[3]);
       sky11.regn(10000, 0, 0);
       
       UI();
       
       //platformen
       fill(50);
       platform1.display();
       safeRoom("You see the score in the left corner?\n You want to keep it below 2 digits");
}
