void Level06() {
  image(Background[6], 0, 0);
  player.show();
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd) && !platform11.rammerDen(rd) &&  !platform12.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
      for (CoolDrop cd : listCool) {
    cd.display();
    if (!platform1.rammerDen(cd) && !platform11.rammerDen(cd) && !platform12.rammerDen(cd)) {
      cd.move();
    } if (cd.posRegn.y > height ) cd.udenfor = true;
      }
  
  for (PetDrop pd : listPets) {
    pd.display();
    if (!platform1.rammerDen(pd) && !platform11.rammerDen(pd) && !platform12.rammerDen(pd)) {
      pd.move();
    } if (pd.posRegn.y > height ) pd.udenfor = true;
      }
  
  rainHit();
  coolHit();
  petsHit();
  comp06();
}

void comp06() {
       fill(255);
       text(pettypts + " / 3      to proceed", 50, 250);
       image(pet, 50+100, 215, 820/15, 651/15);      
  
       //skyer
       sky12.display(410, 710, 5, cloud[3]);
       sky12.regn(10000, 7000, 0);
       
       sky13.display(1230, 1530, 5, cloud[3]);
       sky13.regn(10000, 7000, 0);
       
       sky10.display(200, width-200, 10, cloud[1]);
       sky10.regn(4000, 2000, 1);
       
       sky14.display(200, width-200, 10, cloud[2]);
       sky14.regn(2250, 2000, 2);
       
       UI();
       //platformen
       fill(50);
       platform1.display();
       safeRoom("It's raining cats, but no dogs?!\nHow bizarre - Cats don't like water...");
}
