class Timer {
  int startTime = 0, stopTime = 0;
  boolean run = false; 
  
  //Timer
  Timer(){
  }
  
  void start() {
    startTime = millis();
    run = true;
  }
  
  void stop() {
    stopTime = millis();
    run = false;
  }
  int getElapsedTime() {
    int elapsed;
    if (run) {
      elapsed = (millis() - startTime);
    }
    else {
      elapsed = (stopTime - startTime);
    }
    return elapsed;
  }
  
  int second() {
    return (getElapsedTime() / 1000) % 60;
  }
  
  int minute() {
    return (getElapsedTime() / (1000*60)) % 60;
  }
  
  int hour() {
    return (getElapsedTime() / (1000*60*60)) % 24;
  }
}
