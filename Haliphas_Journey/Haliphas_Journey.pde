
//PImage Halipha;
Halipha halipha;
PImage Halipha;


void setup(){
<<<<<<< HEAD
size(1000,1000);
Halipha = loadImage("DefaultR.png");
=======
//size(1000,1000);
  
fullScreen();
Halipha = loadImage("Halipha.png");
>>>>>>> a04836e99d5ac79b2b29a3e0309428cd15028f6e
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
