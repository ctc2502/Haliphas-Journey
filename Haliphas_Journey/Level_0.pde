void Level00() {
  imageMode(0);
  image(BackgroundMain, 0, 0);
    for(int i = 0; i < HR.length; i++) {
     HR[i].fall();
    }
    if (hcToggle == true) {
    if (AreaCheck(width-200, height-200, 100, 100)) {
      imageMode(0);
      image(Backgroundhc, 0, 0);
      imageMode(CENTER);
      image(button, width-200, height-200, 120, 120);
      } else{
      imageMode(CENTER);
      image(button, width-200, height-200);
      }
    }
    typeWrite("Mouse click to start game...", width/2, height/2);
    imageMode(0);
}

class HeavyRain {
  PVector HeavyPos = new PVector(random(width), random(-500, -50));
  float fallSpeed = random(4, 10);
  float leng = random(10, 20);
  
  HeavyRain() {
  }
  
  void fall() {
    HeavyPos.y = HeavyPos.y + fallSpeed;
    if (HeavyPos.y > height) {
      HeavyPos.y = random(-200, 100);  
      fallSpeed = random(4, 10);
      }
    stroke(0, 90, 40);
    line(HeavyPos.x, HeavyPos.y, HeavyPos.x, HeavyPos.y+10);
    }
  }

public boolean AreaCheck(float x, float y, float w, float h) {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY < y+h/2 && mouseY > y-h/2) {
      return true;
    } else {
      return false;
    }
  }
