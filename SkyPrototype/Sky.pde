class Sky {
  PVector placement = new PVector(width/2, 100);
  PVector pos = new PVector(random(placement.x-100, placement.x+100), placement.y);
  PVector speed = new PVector(0, random(4, 10));
  PVector len = new PVector(0, random(10, 20)); 
  
  Sky() {
  }
  
  void fall() {
    pos.y  = pos.y + speed.y;
    //speed.y = speed.y + 0.2;
    //placement.y = mouseY;
    //placement.x = mouseX; 
    //pos.x = random(placement.x-100, placement.x+100);
    
    if (pos.y > height) {
      pos.y = placement.y+20;
      //speed.y = random(4, 10);
    }
    show();
  }
  
  void show() {
    stroke(0);
    line(pos.x, pos.y, pos.x, pos.y+len.y);
    image(cloud0, placement.x, placement.y);
  }
}
