boolean newletter;
boolean direction;
boolean jump;
float velocity;
float velocityconst;
Player player;

//PImage Halipha;
PImage Halipha;

boolean dir;

void setup(){
Halipha = loadImage("DefaultR.png");
//size(1000,1000);
  
fullScreen();
player = new Player(0, height/2, 10);
velocityconst = -8.0;
velocity = velocityconst;


}

void draw(){
 clear();
 background(244,200,189);
  println(newletter, " ", jump);
    if(newletter == true) {
      player.drive(direction);
    }
    if(jump == true) {
        player.jump();
    }

    player.show();
}

void keyPressed()
{
    if(key == 'A' || key == 'a') {
        direction = false;
        newletter = true; 
    } else if (key == 'D' || key == 'd') {
        direction = true;
        newletter = true;
    }

    if (key == 'W' || key == 'w') {
        jump = true;
    }  
}

void keyReleased(){  
  if (key == 'A' || key == 'a' || key == 'D' || key == 'd') {
        newletter = false;
    }
}
