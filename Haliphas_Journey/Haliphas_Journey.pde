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
PImage[] Background = new PImage[7];
PImage Halipha, frame;
PImage[] WalkR = new PImage[7];
PImage[] WalkL = new PImage[7];
PImage cloud0;
PImage hail;
PImage pet;

PVector framePOS = new PVector(1300, -200);

void setup() {
  frameRate(60);
  
  Halipha = loadImage("DefaultR.png");
  Halipha.resize(100, 100);

  pet = loadImage("cat.png");
  pet.resize(820/16, 651/16);

  frame = loadImage("Frame.png");
  frame.resize(1200, 250);
  
  for(int i = 1; i < Background.length; i++) {
    Background[i] = loadImage("Background"+i+".png");
    Background[i].resize(width, height);
  }
  
  Background00 = loadImage("Bruddas.bmp");
  Background00.resize(width, height);

  fullScreen();
  //size(960,640); 

  cloud0 = loadImage("CloudSprite0.png");
  
  hail = loadImage("Snowball.png");
  hail.resize(20, 20);

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
    background(0);
    typeWrite("My precious...", width/2, height/2);
    break;
  case -5:
    //kode
    background(0);
    typeWrite("...My finest work yet", width/2, height/2);
    break;
  case -4: 
    //kode
    background(0);
    typeWrite("I must...", width/2, height/2);
    break;
  case -3:
    //kode
    background(0);
    typeWrite("TREASURE THIS!!!", width/2, height/2);
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
  case 7:
    background(0);
    typeWrite("At last ... another gem added to my collection", width/2, height/2);
    break;
  case 8:
    background(0);
    typeWrite("Attempts: "+attempts, width/2, height/2);
    break;
  }
}

void mousePressed() {
  switch(Phase) {
  case -6:
    //kode
    Phase = -5;
    subcnt = 0;
    break;
  case -5:
    //kode
    Phase = -4;
    subcnt = 0;
    break;
  case -4: 
    //kode
    Phase = -3;
    subcnt = 0;
    break;
  case -3:
    //kode
    Phase = 1;
    subcnt = 0;
    break;
  case -2:
    //kode
    break;
  case -1:
    //kode
    break;
  default:
    //kode
    Phase = -6;
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
  case 7:
    //kode
    Phase++;
    subcnt = 0;
    break;
  case 8:
    //kode
    Phase++;
    subcnt = 0;
    break;
  }
}

void keyPressed() {
  switch(Phase) {
  case -6:
    //kode
    Phase = -5;
    subcnt = 0;
    break;
  case -5:
    //kode
    Phase = -4;
    subcnt = 0;
    break;
  case -4: 
    //kode
    Phase = -3;
    subcnt = 0;
    break;
  case -3:
    //kode
    Phase = 1;
    subcnt = 0;
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
  case 7:
    //kode
    Phase++;
    subcnt = 0;
    break;
  case 8:
    //kode
    Phase++;
    subcnt = 0;
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
    if (framePOS.y < 40) {
      framePOS.y += 10;
    } 
  } else if(framePOS.y > -200) {
      framePOS.y -= 10; 
    }
  imageMode(0);
  textAlign(LEFT);
}

void typeWrite(String msg, int x, int y) {
  textAlign(CENTER);
  fill(255);
  text (msg.substring(0, constrain(int(subcnt/5), 0, msg.length())), x, y);
  //println(subcnt);
  subcnt++;
  textAlign(LEFT);
}
