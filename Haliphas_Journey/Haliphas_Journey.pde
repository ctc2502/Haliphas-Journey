ArrayList<RainDrop> listRain = new ArrayList<RainDrop>(100);
ArrayList<CoolDrop> listCool = new ArrayList<CoolDrop>(100);
HeavyRain[] HR = new HeavyRain[100];

int Phase = 0;
int attempts = 0;
int counter;
int cooldown = 30;
float xspeed = 10;

PFont font;
int subcnt;

Player player;
float velocity;
float velocityconst;

PImage Background00, Background01, Background02, Background03, Background04;
PImage Halipha;
PImage[] WalkR = new PImage[7];
PImage[] WalkL = new PImage[7];
PImage cloud0;

void setup() {
Halipha = loadImage("DefaultR.png");
Halipha.resize(100, 100);

frameRate(60);
Background00 = loadImage("Bruddas.bmp");
Background00.resize(width, height);

Background01 = loadImage("Background1.png");
Background01.resize(width, height);

Background02 = loadImage("Background2.png");
Background02.resize(width, height);

Background03 = loadImage("Background03.png");
Background03.resize(width, height);

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
    Debug();
    break;  
  
  case 1:
    //kode
    Level01();
    Debug();
    break;  
  case 2:
    //kode
    Level02();
    Debug();
    break;
  case 3:
    //kode
    Level03();
    Debug();
    break;
  case 4:
    //kode
    Level04();
    Debug();
    break;
  case 5:
    Level05();
    Debug();
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
    Debug();
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
    
  case 4:
    //kode
    player.movement();
    break;
  case 5:
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

void Debug() {
  //Debug
  if (mouseButton == RIGHT) {
    ellipse( mouseX, mouseY, 2, 2 );
    fill(0);
    text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
    text(frameRate, mouseX+64, mouseY+64);
    fill(255);
  }
}
