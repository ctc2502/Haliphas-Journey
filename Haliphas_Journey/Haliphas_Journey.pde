
//PImage Halipha;
Halipha halipha;
PImage Halipha;


void setup(){
size(1000,1000);
Halipha = loadImage("Halipha.png");
halipha = new Halipha();

}

void keyPressed() {
  if (key == ' ') {
    halipha.jump();
  }
  if (key == ' ') {
    halipha.move();
  }
  if (key == ' ') {
    halipha.move();
  }
  if (key == ' ') {
    halipha.move();
  }
  if (key == ' ') {
    halipha.move();
  }
}

void draw(){
 clear();
 background(244,200,189);
  




  
  
  halipha.show();
  halipha.Gravitation();
 
}
