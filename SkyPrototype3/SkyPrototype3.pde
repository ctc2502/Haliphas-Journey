Sky sky1 = new Sky(new PVector(400, 100));
Sky sky2 = new Sky(new PVector(600, 100));
Platform platform1 = new Platform();

ArrayList<RainDrop> listRain = new ArrayList<RainDrop>();

PImage cloud0;

void setup() {
  size(1280, 720);
  cloud0 = loadImage("CloudSprite0.png");
  imageMode(CENTER);
}

void draw() {
  clear();
  background(230, 230, 250);
  //println(listRain.size());
  //Regnen regner på platforme
  for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd)) {
      rd.move();
    } /*else {
          for (int u = listRain.size()-1; u > 0; u--) {
          rd = listRain.get(u);
          listRain.remove(rd);
      }
    } */
    
    //println(listRain.size());

    if (rd.posRegn.y > height ) rd.udenfor = true;
      }

  for (int i = listRain.size()-1; i > 0; i--) {
    if (listRain.size() > 0) {
      RainDrop rd = listRain.get(i);
      if (rd.udenfor) {
        listRain.remove(rd);
        //print("fjern!!!!");
      } 
    }
  }
    //skyen
    sky1.display();
    //sky1.move(mouseX, mouseY);
    sky1.regn(10000, 2000);
    
    sky2.display();
    //sky1.move(mouseX, mouseY);
    sky2.regn(8000, 2000);
    //platformen
    platform1.display();
  
}
