class BadGuy {
  PVector badLoc;
  PVector attackLoc;
  int m;
  //int oldTime2;
  boolean shoot;
  int badLives;
  PVector badLivesLoc;
  boolean badGuyDie;

  BadGuy() {
    m=3;
    badLoc=new PVector(400, 400);
    badLivesLoc= new PVector(400, 100);
    attackLoc= new PVector(badLoc.x, badLoc.y);
    shoot=false;
    badLives= 3;
    badGuyDie = false;
   
  }

  void display() {
    rectMode(CENTER);
    rect(badLoc.x, badLoc.y, 60, 60);
    //lives
    if (badLoc.x-pow.x <= 50) {
      badLives--;
      pow.x = finalRectX;
      fireNum=1;
    }
    if (badLives==3) {
      rect(badLivesLoc.x, badLivesLoc.y, 20, 20);
    rect(badLivesLoc.x + 30, badLivesLoc.y, 20, 20);
    rect(badLivesLoc.x +60, badLivesLoc.y, 20, 20);
    }
    
    if (badLives == 2) {
    rect(badLivesLoc.x, badLivesLoc.y, 20, 20);
    rect(badLivesLoc.x + 30, badLivesLoc.y, 20, 20);
    }
    
    if (badLives == 1) {
      rect(badLivesLoc.x, badLivesLoc.y, 20, 20);
    }
    
    if (badLives == 0) {
      badGuyDie = true;
    }
println(badLives);
  }
  void move() {

    badLoc.y=badLoc.y-m;

    if (badLoc.y <=200) {
      m=-m;
    }
    if (badLoc.y >= 400) {
      m=-m;
    }
  }

  void attack() {
    //currentTime2=millis();
    if (frameCount%100==0) {
      attackLoc.x=badLoc.x;
      attackLoc.y=badLoc.y;
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
    }
  }
}

