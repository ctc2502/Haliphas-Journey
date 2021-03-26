class Player {
    float xpos;
    float ypos;
    float xspeed;
    int r;
    
  Player(float xPos, float yPos, float xSpeed) {
    r = 100;
    //x = 50;
    xpos = xPos;
    ypos = yPos;
    xspeed = xSpeed;
    
  }

  void movement() {
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
  
  void show() {
      //PImage walk = Walk[frameCount%7];
      //if (walk != null) {
      image(Halipha, xpos, ypos, r, r);
      //} 
     //drive();
     //fill(255, 50);
    // ellipseMode(CORNER);
   //  ellipse(x, y, r, r);
   
       if(shift == true) {
      player.drive(direction);
    }
    if(jump == true) {
        player.jump(870);
    }
  }
  
  void drive(boolean dir) {
        if ((xpos + xspeed) > width && (dir)) {
            float remainder = float(width) - xpos;
            xpos = 0 + (xspeed - remainder);
        } else if ((xpos - xspeed) < 0 && !(dir)) {
            float remainder = xpos - 0;
            xpos = width - (xspeed - remainder);
        } else {
            if (dir) xpos += xspeed;
            else xpos -= xspeed;
        }
    }
    
    void jump(int jreq) {
        velocity = velocity + 0.5;
        if(ypos + velocity > (jreq)) {
            ypos = jreq;
            jump = false;
            velocity = velocityconst;
        } else {
            ypos += velocity;
        }
    }
    
    void releaz() {
      if (key == 'A' || key == 'a' || key == 'D' || key == 'd') {
        shift = false;
      }
    }
}
