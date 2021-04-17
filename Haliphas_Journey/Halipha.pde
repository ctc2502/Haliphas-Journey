class Player {
    float xpos;
    float ypos;
    int r;    
    boolean direction;
    boolean dir;
    boolean shift;
    boolean jump;
    
  Player(float xPos, float yPos) {
    r = 45;
    //x = 50;
    xpos = xPos;
    ypos = yPos;
    //xspeed = xSpeed;
    
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
      if (!direction) {
        if (key == 'A' || key == 'a'){
      if (WalkL[frameCount%7]!= null) {
       image(WalkL[frameCount%7], xpos, ypos);
          }
        }
      } else if (direction) {
        if (key == 'D' || key == 'd') {
      if (WalkR[frameCount%7]!= null) {
       image(WalkR[frameCount%7], xpos, ypos);
          } 
        }
      } 
      if (key != 'D' && key != 'd' && key != 'A' && key != 'a') {
      image(Halipha, xpos, ypos);
      }
      //Hitbox
      /* noFill();
      rect(xpos+25, ypos+25, r, r); */
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
        if ((xpos + xspeed) > width-45 && (dir)) {
            if (pettypts >= 3 || Phase != 6) {
            float remainder = float(width) - xpos;
            xpos = 0 + (xspeed - remainder);
            Phase++;
            subcnt = 0;
            pettypts = 0;
            }
        } else if ((xpos - xspeed) < -45 && !(dir)) {
            //float remainder = xpos - 0;
            //xpos = width - (xspeed - remainder);
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
      //image(Halipha, xpos, ypos); 
    }
    
    boolean Hitbox(RainDrop rd) {
      boolean indenforX = rd.posRegn.x >= xpos+25 && rd.posRegn.x <=  xpos+25 + r;
      boolean indenforY = rd.posRegn.y >= ypos+25 && rd.posRegn.y <= ypos+25 + r;

      return indenforX && indenforY;
    }
   
}
