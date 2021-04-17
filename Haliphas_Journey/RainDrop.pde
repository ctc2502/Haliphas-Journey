 class RainDrop {
    PVector posRain  = new PVector(-10, -10);  
    int speedRegn = 0;
    boolean udenfor= false;
    
    //Regnnedbør - Display
    RainDrop(){
    }
    
    void startRain(int x_sky, int y_sky) {
      posRain.x =  x_sky + random(-100, 100);
      posRain.y =  y_sky+ random(0, 100);
      speedRegn= (int)random(5, 10);
    }

    void move() {
      posRain.y = posRain.y + speedRegn;
    }

    void display() {
    stroke(0);
    strokeWeight(2);
    line(posRain.x, posRain.y, posRain.x, posRain.y+10);
      }
  }
