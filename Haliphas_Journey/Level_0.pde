void Level00() {
  image(Background00, 0, 0);
    for(int i = 0; i < HR.length; i++) {
     HR[i].fall();
    }
 
    typeWrite("Press any key to continue...", width/2, height/2);
}
