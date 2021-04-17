ArrayList<RainDrop> listRain = new ArrayList<RainDrop>();
ArrayList<CoolDrop> listCool = new ArrayList<CoolDrop>();
ArrayList<PetDrop> listPets = new ArrayList<PetDrop>();

HeavyRain[] HR = new HeavyRain[100];
Timer swt;

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
float velocitycst;

PImage BackgroundMain, Backgroundhc;
PImage[] Background = new PImage[7];
PImage PlayerR, PlayerL;
PImage[] WalkR = new PImage[7];
PImage[] WalkL = new PImage[7];
PImage[] cloud = new PImage[4];
PImage hail, pet;
PImage button, frame;

boolean hcMode = false;
boolean hcToggle = false;

PVector framePOS = new PVector(1300, -200);

 int durability = 3;
 int Countdown = 180;

void setup() {
  frameRate(60);
  fullScreen();
  //size(960,640); 
  
  swt = new Timer();
  
  button = loadImage("crossbones.jpg");
  button.resize(100, 100);

  pet = loadImage("cat.png");
  pet.resize(820/16, 651/16);
  hail = loadImage("Snowball.png");
  hail.resize(20, 20);

  frame = loadImage("Frame.png");
  frame.resize(1200, 250);
  
  for(int i = 1; i < Background.length; i++) {
    Background[i] = loadImage("Background"+i+".png");
    Background[i].resize(width, height);
  }
  
  BackgroundMain = loadImage("Bruddas.bmp");
  BackgroundMain.resize(width, height);
  Backgroundhc = loadImage("hcBruddas.png");
  Backgroundhc.resize(width, height);
  
  for(int i = 0; i < cloud.length; i++) {
    cloud[i] = loadImage("CloudSprite"+i+".png");
    //cloud[i].resize(500, 500);
  }

  font = createFont("NewTegomin.ttf", 40); 
  textFont(font);
  strokeWeight(2);

  PlayerR = loadImage("DefaultR.png");
  PlayerR.resize(100, 100);
  PlayerL = loadImage("DefaultL.png");
  PlayerL.resize(100, 100);
  player = new Player(0, 870);
  velocitycst = -8.0;
  velocity = velocitycst;
  for (int i = 0; i < HR.length; i++) {
    HR[i] = new HeavyRain();
  }

  for (int i = 0; i < WalkR.length; i++) {
    WalkR[i] = loadImage( "Walk" + i + "R" + ".png");
    WalkR[i].resize(100, 100);
  }
  for (int i = 0; i < WalkL.length; i++) {
    WalkL[i] = loadImage( "Walk" + i + "L" + ".png");
    WalkL[i].resize(100, 100);
  }
  smooth();
}

void draw() {
  clear();
  switch(Phase) {
  case -5:
    //GameOver - Draw
    background(0);
    typeWrite("How c#@ld this b%?...My precio#s...", width/2, height/2);
    break;
  case -4: 
    //Story(1) - Draw
    background(0);
    typeWrite("My precious...", width/2, height/2);
    break;
  case -3:
    //Story(2) - Draw
    background(0);
    typeWrite("...My finest work yet", width/2, height/2);
    break;
  case -2:
    //Story(3) - Draw
    background(0);
    typeWrite("I must...", width/2, height/2);
    break;
  case -1:
    //Story(4) - Draw
    background(0);
    typeWrite("TREASURE THIS!!!", width/2, height/2);
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
    //WinScreen - Draw
    background(0);
    typeWrite("At last ... another gem added to my collection", width/2, height/2);
    break;
  case 8:
    //WinStats - Draw
    background(0);
    typeWrite("Attempts: "+attempts, width/2, height/2);
    typeWrite("Time: "+swt.hour()+":"+swt.minute()+":"+swt.second(), width/2, height/2+100);
    if (hcToggle == false) {
    safeRoom("Hardcore Mode is now unlocked");
    }
    break;
  }
}

void mousePressed() {
  switch(Phase) {
  case -5:
    //GameOver - mousePressed
    Phase = 0;
    subcnt = 0;
    durability = 3;
    Countdown = 180;
    pettypts = 0;
    hcMode = false;
    break;
  case -4: 
    //Story(1) - mousePressed
    Phase++;
    subcnt = 0;
    break;
  case -3:
    //Story(2) - mousePressed
    Phase++;
    subcnt = 0;
    break;
  case -2:
    //Story(3) - mousePressed
    Phase++;
    subcnt = 0;
    swt.start();
    break;
  case -1:
    //kode
    Phase = 1;
    subcnt = 0;
    break;
  default:
    //kode
    Phase = -4;
    subcnt = 0;
    attempts = 0;
    Debug();
    if (hcToggle == true) {
    if (AreaCheck(width-200, height-200, 100, 100)) {
      hcMode = true;
      } 
    }
    break;  
  case 1:
    //Level 1
    break;  
  case 2:
    //Level 2
    break;
  case 3:
    //Level 3
    break;
  case 4:
    //Level 4
    break;
  case 5:
    //Level 5
    break;
  case 6:
    //Level 6
    break;
  case 7:
    //kode
    Phase++;
    subcnt = 0;
    swt.stop();
    break;
  case 8:
    //kode
    Phase++;
    subcnt = 0;
    hcMode = false;
    hcToggle = true;
    break;
  }
}

void keyPressed() {
  switch(Phase) {
  default:
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
  //Debug
  /*
  if (keyCode == RIGHT) {
   Phase++;
  }*/
}

void Debug() {
  //Debug
  /*
  if (mouseButton == RIGHT) {
    ellipse( mouseX, mouseY, 2, 2 );
    fill(0);
    text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
    text(frameRate, mouseX+64, mouseY+64);
    fill(255);
  } */
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
