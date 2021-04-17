 class PetDrop extends RainDrop {
   
   //Kæledyrnedbør - Display
   PetDrop() {
   }
   
    void display() {
    stroke(0);
    strokeWeight(2);
    fill(200, 200, 0);
    //rect(posRegn.x, posRegn.y, 20, 20);
    image(pet, posRain.x, posRain.y);
      }
  }
