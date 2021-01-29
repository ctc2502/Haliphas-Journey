
//PImage Halipha;
Halipha halipha;
PImage Halipha;


void setup(){
//size(1000,1000);
  
fullScreen();
Halipha = loadImage("Halipha.png");
halipha = new Halipha();


}

void keyPressed() {
  if (key == ' ') {
    halipha.jump();
  }
  if (key == 'a') {
    halipha.moveleft();
  }
  if (key == 'd') {
    halipha.moveright();
  }
 
}

void draw(){
 clear();
 background(244,200,189);
  




  
  
  halipha.show();
  halipha.Gravitation();
 
}
