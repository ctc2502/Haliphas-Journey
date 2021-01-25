class Fisk {
  float x = 500;
  float y = 400;
  float b = 40;
  float l = 20;
  float xspeed = -1;
PImage fisk;
 
    
  void tegn(){
    //for(int y=300; y<600; y=y+20){
      
    fisk = loadImage("fisk.png");
    image(fisk,x-50,y-50,b+90,l+70);
    
  }
  void hastighed(){
    x=x+xspeed;
  }
  
  void kanter(){
    if (x>800||x<200){
      xspeed =xspeed *-1;
          }
    
  }
  
   void fangfisk(){
    if(dist(mouseX,mouseY,x,y)<25)
    {
      x=540;
      y=230;
      xspeed=0;
    }
    
   }}
