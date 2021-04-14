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
Platform platform2 = new Platform(900, 800, 100, 10);
Platform platform3 = new Platform(525, 800, 100, 10);
Platform platform4 = new Platform(825, 800, 100, 10);
Platform platform5 = new Platform(1125, 800, 100, 10);
Platform platform6 = new Platform(1425, 800, 100, 10);

ArrayList<RainDrop> listRain = new ArrayList<RainDrop>(100);

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
 
 //image(Baggrund01, 0, 0);
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
    image(Baggrund00, 0, 0);
    for(int i = 0; i < HR.length; i++) {
     HR[i].fall();
    }
    typeWrite("Press any key to continue...", width/2, height/2);
    break;  
  
  case 1:
    //kode
    //background(244,200,189);
    image(Baggrund01, 0, 0);
    
    println(shift, " ", jump);
    player.show();
    
    for (RainDrop rd : listRain) {
    rd.display();
    if (!platform2.rammerDen(rd) && !platform1.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
      for (RainDrop rd : listRain) {
        rd.display();
      if (player.Hitbox(rd)) {
       player.xpos = 100;
       attempts += 1;
        }
      }
    
  for (int i = listRain.size()-1; i > 0; i--) {
    if (listRain.size() > 0) {
      RainDrop rd = listRain.get(i);
      if (rd.udenfor) {
        listRain.remove(rd);
        print("fjern!!!!");
      } 
    }
  }
    //skyen
    sky1.display(200, width-200);
    sky1.regn(10000, 0);

    //platformen 
    platform1.display();
    platform2.display();
    //ground0.display();
    
    sky2.display(200, width-200);
    sky2.regn(10000, 0);
    
    sky3.display(200, width-200);
    sky3.regn(10000, 0);
    
    text("Attempts:" + attempts, 50, 50);
    break;  
  case 2:
    //kode
    //background(144,255,9);
    image(Baggrund02, 0, 0);
    player.show();
    
    for (RainDrop rd : listRain) {
        rd.display();
      if (player.Hitbox(rd)) {
       player.xpos = 100;
       attempts += 1;
        }
      }
      
      for (RainDrop rd : listRain) {
    rd.display();
    if (!platform1.rammerDen(rd) && !platform3.rammerDen(rd) && !platform4.rammerDen(rd) && !platform5.rammerDen(rd) && !platform6.rammerDen(rd)) {
      rd.move();
    } if (rd.posRegn.y > height ) rd.udenfor = true;
      }
      
       for (int i = listRain.size()-1; i > 0; i--) {
    if (listRain.size() > 0) {
      RainDrop rd = listRain.get(i);
      if (rd.udenfor) {
        listRain.remove(rd);
        print("fjern!!!!");
          } 
        }
       }
       sky4.display(400, 450);
       sky4.regn(10000, 5000);
       
       sky5.display(700, 750);
       sky5.regn(10000, 5000);
       
       sky6.display(1000, 1050);
       sky6.regn(10000, 5000);
       
       sky7.display(1300, 1350);
       sky7.regn(10000, 5000);
       
       sky8.display(1600, 1650);
       sky8.regn(10000, 5000);
       
       platform1.display();
       platform3.display();
       platform4.display();
       platform5.display();
       platform6.display();
       
       text("Attempts:" + attempts, 50, 50);
    break;
  case 3:
    //kode
    //background(44,22,200);
    image(Baggrund03, 0, 0);
    player.show();
    text("Attempts:" + attempts, 50, 50);
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
  text (msg.substring(0,constrain(int(subcnt/5),0,msg.length())), x, y);
  subcnt++;
}
