class Platform extends Sky {
  int x, y, w, h; 
  Platform(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void collision() {
    
  } 
  
  void display(){
    rect(mouseX, mouseY, w, h);
      println(dist(x, y, pos.x, pos.y));
  }
}
