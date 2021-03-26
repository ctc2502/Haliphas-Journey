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
    stroke(0, 120, 90);
    line(HeavyPos.x, HeavyPos.y, HeavyPos.x, HeavyPos.y+leng);
  }
}
