int Phase = 0;

PFont font;
int subcnt;

boolean shift;
boolean direction;
boolean jump;
float velocity;
float velocityconst;
Player player;
HeavyRain[] HR = new HeavyRain[100];

//PImage Halipha;
PImage Baggrund00, Baggrund01;
PImage Halipha;
PImage[] WalkR = new PImage[7];
PImage[] WalkL = new PImage[7];

boolean dir;
//Halipha version 2.0
int counter;

void setup(){
Halipha = loadImage("DefaultR.png");
Halipha.resize(100, 100);

frameRate(60);
Baggrund00 = loadImage("Bruddas.bmp");
Baggrund00.resize(width, height);

Baggrund01 = loadImage("baggrund færdig.png");
Baggrund01.resize(width, height);
//size(1000,1000); 

font = createFont("NewTegomin.ttf", 40); 
textFont(font);
  
fullScreen();
player = new Player(0, 870, 10);
velocityconst = -8.0;
velocity = velocityconst;
for(int i = 0; i < HR.length; i++) {
   HR[i] = new HeavyRain();
}
//smooth();

for (int i = 0; i < WalkR.length; i++) {
    WalkR[i] = loadImage( "Walk" + i + "R" + ".png");
    WalkR[i].resize(100, 100);
    }
for (int i = 0; i < WalkL.length; i++) {
    WalkL[i] = loadImage( "Walk" + i + "L" + ".png");
    WalkL[i].resize(100, 100);
    }
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
    typeWrite("Press any key to continue...", width/2, height/2);
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
    Phase = 1;
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
    Phase = 1;
    break;  
  case 1:
    //kode
    player.movement();
    break;  
  case 2:
    //kode
    break;
  case 3:
    //kode
    break;
  }
}

void keyReleased(){  
  player.releaz();
}

void typeWrite(String msg, int x, int y) {
  text (msg.substring(0,constrain(int(subcnt/5),0,msg.length())), x, y);
  subcnt++;
}
