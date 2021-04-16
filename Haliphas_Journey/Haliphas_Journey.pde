ArrayList<RainDrop> listRain = new ArrayList<RainDrop>();
ArrayList<CoolDrop> listCool = new ArrayList<CoolDrop>();
ArrayList<PetDrop> listPets = new ArrayList<PetDrop>();
HeavyRain[] HR = new HeavyRain[100];

int Phase = 0;
int attempts = 0;
int counter;
int cooldown = 30;
float xspeed = 7;
int pettypts = 0;

int subcnt;
PFont font;

Player player;
float velocity;
float velocityconst;

PImage Background00, Background01, Background02, Background03, Background04, Background06;
PImage Halipha, frame;
PImage[] WalkR = new PImage[7];
PImage[] WalkL = new PImage[7];
PImage cloud0;

PVector framePOS = new PVector(900, -200);

void setup() {
  frameRate(60);
  
  Halipha = loadImage("DefaultR.png");
  Halipha.resize(100, 100);

  frame = loadImage("Frame.png");
  frame.resize(1200, 100);
  
  Background00 = loadImage("Bruddas.bmp");
  Background00.resize(width, height);

  Background01 = loadImage("Background1.png");
  Background01.resize(width, height);

  Background02 = loadImage("Background2.png");
  Background02.resize(width, height);

  Background03 = loadImage("Background3.png");
  Background03.resize(width, height);

  Background04 = loadImage("Background4.png");
  Background04.resize(width, height);

  Background06 = loadImage("Background6.png");
  Background06.resize(width, height);

  fullScreen();
  //size(960,640); 

  cloud0 = loadImage("CloudSprite0.png");


  font = createFont("NewTegomin.ttf", 40); 
  textFont(font);
  strokeWeight(2);


  player = new Player(0, 870);
  velocityconst = -8.0;
  velocity = velocityconst;
  for (int i = 0; i < HR.length; i++) {
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

void draw() {
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
  case 6:
    Level06();
    Debug();
    break;
  }
}

void mousePressed() {
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
    subcnt = 0;
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
  case 4:
    //kode
    break;
  case 5:
    //kode
    break;
  case 6:
    //kode
    break;
  }
}

void keyPressed() {
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
    subcnt = 0;
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
  case 6:
    //kode
    player.movement();
    break;
  }
}

void keyReleased() {  
  player.releaz();
  if (keyCode == RIGHT) {
   Phase++;
  }
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

void safeRoom(String hints) {
  imageMode(CENTER);
  textAlign(CENTER);
  image(frame, framePOS.x, framePOS.y);
  fill(255);
  typeWrite(hints, (int)framePOS.x+75, (int)framePOS.y);
  if (player.xpos < 200) {
    if (framePOS.y < 50) {
      framePOS.y += 10;
    } 
  } else if(framePOS.y > -100) {
      framePOS.y -= 10; 
    }
  imageMode(0);
  textAlign(LEFT);
}

void typeWrite(String msg, int x, int y) {
  textAlign(CENTER);
  text (msg.substring(0, constrain(int(subcnt/5), 0, msg.length())), x, y);
  //println(subcnt);
  subcnt++;
  textAlign(LEFT);
}
