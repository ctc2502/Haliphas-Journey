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

  
  void show() {
    image(Halipha, xpos, ypos, r, r);
     //drive();
     //fill(255, 50);
    // ellipseMode(CORNER);
   //  ellipse(x, y, r, r);
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
    
    void jump() {
        velocity = velocity + 0.5;
        if(ypos + velocity > (height/2)) {
            ypos = height/2;
            jump = false;
            velocity = velocityconst;
        } else {
            ypos += velocity;
        }
    }
}
