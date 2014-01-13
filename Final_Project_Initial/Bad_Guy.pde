class BadGuy {
  PVector badLoc;
  BadGuy() {
    badLoc=new PVector(400, 400);
  }

  void display() {
    rectMode(CENTER);
    rect(badLoc.x, badLoc.y, 60, 60);
  }

  void attack() {
    if (currentTime-oldTime>1250) {
      ellipse(badLoc.x, badLoc.y, 20, 20);
      badLoc.x=badLoc.x+5;
      oldTime = currentTime;
    }
  }
}

