int Phase = 0;

boolean shift;
boolean direction;
boolean jump;
float velocity;
float velocityconst;
Player player;
HeavyRain[] HR = new HeavyRain[1000];

//PImage Halipha;
PImage Baggrund00, Baggrund01;
PImage Halipha;
PImage[] Walk = new PImage[7];

boolean dir;
//Halipha version 2.0

void setup(){
Halipha = loadImage("DefaultR.png");

Baggrund00 = loadImage("Bruddas.bmp");
Baggrund00.resize(width, height);

Baggrund01 = loadImage("baggrund færdig.png");
Baggrund01.resize(width, height);
//size(1000,1000); 
  
fullScreen();
player = new Player(0, 870, 10);
velocityconst = -8.0;
velocity = velocityconst;
for(int i = 0; i < HR.length; i++) {
   HR[i] = new HeavyRain();
}

/*for (int i = 0; i < Walk.length; i++) {
    Walk[i] = loadImage( "Walk" + i + "R.gif");
  }
  */
}

void draw(){
 clear();
 background(244,200,189);
 image(Baggrund01, 0, 0);
 println(shift, " ", jump);
    
    
    switch(Phase) {
  case -6:
    //kode
    break;
  case -5:
    //kode
    break;
  case -4: 
    //kode
    break;
  case -3:
    //kode
    break;
  case -2:
    //kode
    break;
  case -1:
    //kode
    
    break;
  default:
    //kode
    image(Baggrund00, 0, 0);
    for(int i = 0; i < HR.length; i++) {
     HR[i].fall();
    }
    break;  
  case 1:
    //kode
    image(Baggrund01, 0, 0);
    println(shift, " ", jump);
    player.show();
    break;  
  case 2:
    //kode
    break;
  case 3:
    //kode
    break;
  }
}

void mousePressed(){
      switch(Phase) {
  case -6:
    //kode
    break;
  case -5:
    //kode
    break;
  case -4: 
    //kode
    break;
  case -3:
    //kode
    break;
  case -2:
    //kode
    break;
  case -1:
    //kode
    break;
  default:
    //kode
    break;  
  case 1:
    //kode
    break;  
  case 2:
    //kode
    break;
  case 3:
    //kode
    break;
  }
}

void keyPressed(){
    player.movement(); 
}

void keyReleased(){  
  player.releaz();
}
