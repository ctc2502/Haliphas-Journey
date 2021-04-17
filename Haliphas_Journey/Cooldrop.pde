 class CoolDrop extends RainDrop {
   
   //Snenedbør - Display
   CoolDrop(){
   }
   
    void display() {
    stroke(0);
    strokeWeight(2);
    fill(255);
    //rect(posRegn.x, posRegn.y, 20, 20);
    image(hail, posRain.x, posRain.y);
      }
  }
