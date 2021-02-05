Sky[] S = new Sky[100];
Platform P = new Platform(500, 500, 500, 100);

PImage cloud0;

void setup(){
  size(1000, 1000);
  cloud0 = loadImage("CloudSprite0.png");
  imageMode(CENTER);
  for (int i = 0; i < S.length; i++) {
    S[i] = new Sky();
  }
  for (Sky S : Sky) {
  }
}
  
void draw(){
  background(230, 230, 250);
    for (int i = 0; i < S.length; i++) {
    S[i].fall();
    }
  S[0].show();
  P.display();
  P.collision(); 

}
