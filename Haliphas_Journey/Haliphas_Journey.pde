int Phase = 0;

PFont font;
int subcnt;
int attempts = 0;

Sky sky1 = new Sky(new PVector(300, 100));
Sky sky2 = new Sky(new PVector(800, 90));
Sky sky3 = new Sky(new PVector(500, 75));
Sky sky4 = new Sky(new PVector(400, 75));
Sky sky5 = new Sky(new PVector(700, 100));
Sky sky6 = new Sky(new PVector(1000, 90));
Sky sky7 = new Sky(new PVector(1300, 75));
Sky sky8 = new Sky(new PVector(1600, 100));

Platform platform1 = new Platform(0, 800, 200, 10);
Platform platform2 = new Platform(0, 510, 1335, 10);
Platform platform3 = new Platform(525, 800, 100, 10);
Platform platform4 = new Platform(825, 800, 100, 10);
Platform platform5 = new Platform(1125, 800, 100, 10);
Platform platform6 = new Platform(1425, 800, 100, 10);
//Platform platform2 = new Platform(900, 800, 100, 10);

ArrayList<RainDrop> listRain = new ArrayList<RainDrop>(100);

int cooldown = 30;
float xspeed = 10;
boolean shift;
boolean direction;
boolean jump;
float velocity;
float velocityconst;
Player player;
HeavyRain[] HR = new HeavyRain[100];

//PImage Halipha;
PImage Baggrund00, Baggrund01, Baggrund02, Baggrund03;
PImage Halipha;
PImage[] WalkR = new PImage[7];
PImage[] WalkL = new PImage[7];
PImage cloud0;

boolean dir;
//Halipha version 2.0
int counter;

void setup() {
Halipha = loadImage("DefaultR.png");
Halipha.resize(100, 100);

frameRate(60);
Baggrund00 = loadImage("Bruddas.bmp");
Baggrund00.resize(width, height);

Baggrund01 = loadImage("Background1.png");
Baggrund01.resize(width, height);

Baggrund02 = loadImage("Background2.png");
Baggrund02.resize(width, height);

Baggrund03 = loadImage("Background3.png");
Baggrund03.resize(width, height);

fullScreen();
//size(960,640); 

cloud0 = loadImage("CloudSprite0.png");


font = createFont("NewTegomin.ttf", 40); 
textFont(font);
strokeWeight(2);
  

player = new Player(0, 870);
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
 
 //image(Baggrund01, 0, 0);
 //println(shift, " ", jump);
    
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
    Level00();
    break;  
  
  case 1:
    //kode
    Level01();
    break;  
  case 2:
    //kode
    Level02();
    break;
  case 3:
    //kode
    Level03();
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
       attempts = 0;

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
       attempts = 0;
    break;  
  case 1:
    //kode
    player.movement();
    break;  
  case 2:
    //kode
    player.movement();
    break;
  case 3:
    //kode
    player.movement();
    break;
  }
}

void keyReleased(){  
  player.releaz();
}

void typeWrite(String msg, int x, int y) {
      textAlign(CENTER);
  text (msg.substring(0,constrain(int(subcnt/5),0,msg.length())), x, y);
  subcnt++;
  textAlign(LEFT);
}
