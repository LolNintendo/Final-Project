class BadGuy {
  PVector badLoc;
  PVector attackLoc;
  int m;
  //int oldTime2;
  boolean shoot;
  BadGuy() {
    m=3;
    badLoc=new PVector(400, 400);
    attackLoc= new PVector(badLoc.x, badLoc.y);
    shoot=false;
  }

  void display() {
    rectMode(CENTER);
    rect(badLoc.x, badLoc.y, 60, 60);
  }
  void move() {
    
      badLoc.y=badLoc.y-m;
    
    if (badLoc.y <=200) {
      m=-m;
    }
    if(badLoc.y >= 400){
      m=-m;
    }
  }

  void attack() {
    //currentTime2=millis();
    if (frameCount%100==0) {
      shoot=true;
      //oldTime2 = currentTime2;
    }
    if (shoot==true) {
      fill(124, 123, 10);
      ellipse(attackLoc.x, attackLoc.y, 20, 20);
      attackLoc.x=attackLoc.x-15;
    }
    if (attackLoc.x<0) {
      shoot=false;
      attackLoc.x=badLoc.x;
      attackLoc.y=badLoc.y;
    }
  }
}

