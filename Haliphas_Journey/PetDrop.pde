 class PetDrop extends RainDrop {
   
   //Kæledyrnedbør - Display
   PetDrop() {
   }
   
    void display() {
    stroke(0);
    strokeWeight(2);
    fill(200, 200, 0);
    //rect(posRain.x, posRain.y, 20, 20);
    image(pet, posRain.x-15, posRain.y-18);
      }
  }
