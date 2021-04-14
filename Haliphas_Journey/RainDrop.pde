 class RainDrop {
    PVector posRegn  = new PVector(-10, -10);  
    int speedRegn = 0;
    boolean udenfor= false;

    void startRain(int x_sky, int y_sky) {
      posRegn.x =  x_sky + random(-100, 100);
      posRegn.y =  y_sky+ random(0, 100);
      speedRegn= (int)random(5, 10);
    }

    void move() {
      posRegn.y = posRegn.y + speedRegn;
    }

    void display(int type) {
    stroke(0);
    strokeWeight(2);
    
    if (type == 0) {
    line(posRegn.x, posRegn.y, posRegn.x, posRegn.y+10);
    }
    
    if (type == 1) {
    fill(255);
    rect(posRegn.x, posRegn.y, 20, 20);
      }
    }
  }
