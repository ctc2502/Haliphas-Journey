int Phase = 0;

PFont font;
int substr_cnt;

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
int counter;

void setup(){
Halipha = loadImage("DefaultR.png");
substr_cnt = 0;

Baggrund00 = loadImage("Bruddas.bmp");
Baggrund00.resize(width, height);

Baggrund01 = loadImage("baggrund færdig.png");
Baggrund01.resize(width, height);
//size(1000,1000); 

font = createFont("NewTegomin.ttf", 32); 
textFont(font);
  
fullScreen();
player = new Player(0, 870, 10);
velocityconst = -8.0;
velocity = velocityconst;
for(int i = 0; i < HR.length; i++) {
   HR[i] = new HeavyRain();
}
smooth();

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
     //text("Press any key to continue", width-500, height-100);
    }
    textSize(40);
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

void typeWrite(String msg, int x, int y) {
  text (msg.substring(0,constrain(int(substr_cnt/5),0,msg.length())), x, y);
  substr_cnt++;
}
