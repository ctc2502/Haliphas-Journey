int Phase;

boolean shift;
boolean direction;
boolean jump;
float velocity;
float velocityconst;
Player player;

//PImage Halipha;
PImage Baggrund01;
PImage Halipha;
PImage[] Walk = new PImage[7];

boolean dir;
//Halipha version 2.0

void setup(){
Halipha = loadImage("DefaultR.png");
Baggrund01 = loadImage("baggrund færdig.png");
Baggrund01.resize(width, height);
//size(1000,1000);
  
fullScreen();
player = new Player(0, 870, 10);
velocityconst = -8.0;
velocity = velocityconst;

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
    if(shift == true) {
      player.drive(direction);
    }
    if(jump == true) {
        player.jump(870);
    }

    player.show();
    
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

void keyPressed()
{
    if(key == 'A' || key == 'a') {
        direction = false;
        shift = true; 
    } else if (key == 'D' || key == 'd') {
        direction = true;
        shift = true;
    }

    if (key == 'W' || key == 'w') {
        jump = true;
    }  
}

void keyReleased(){  
  if (key == 'A' || key == 'a' || key == 'D' || key == 'd') {
        shift = false;
    }
}
