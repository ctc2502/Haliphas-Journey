class Sky {
  PVector placement = new PVector(width/2, 100);
  PVector pos = new PVector(random(placement.x-100, placement.x+100), placement.y);
  PVector speed = new PVector(0, random(4, 10));
  PVector len = new PVector(0, random(10, 20));
  boolean leftright = false;
  
  Sky() {
  }
  
  void fall() {
    pos.y  = pos.y + speed.y;
    //speed.y = speed.y + 0.2;
    //placement.y = mouseY;
    //placement.x = mouseX; 
    movement(500, 600);
    if (pos.y > height) {
      pos.y = placement.y+20;
      pos.x = random(placement.x-100, placement.x+100);
      //speed.y = random(4, 10);
    }
    show();
  }
  
  void show() {
    stroke(0);
    line(pos.x, pos.y, pos.x, pos.y+len.y);
    image(cloud0, placement.x, placement.y);
  }
  
  void movement(int start, int end) {
  if (placement.x >= start && leftright == false) {
      placement.x++;
    } else if (leftright == true) {
      placement.x--;
    }
    
    if (placement.x >= end) {
      leftright = true;
    } else if (placement.x == start) {
      leftright = false;
    }
  }
}