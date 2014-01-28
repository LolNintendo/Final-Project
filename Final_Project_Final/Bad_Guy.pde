class BadGuy {
  PVector badLoc;
  PVector attackLoc;
  int m;
  //int oldTime2;
  boolean shoot;
  int badLives;
  PVector badLivesLoc1;
  PVector badLivesLoc2;

  boolean badGuyDie;

  PImage badGuy;

  BadGuy() {
    m=3;
    badLoc=new PVector(400, 400);
    badLivesLoc1= new PVector(75, 50);
    badLivesLoc2= new PVector(450, 125);
    attackLoc= new PVector(badLoc.x, badLoc.y);
    shoot=false;
    badLives= 3;
    badGuyDie = false;

    badGuy = loadImage("Bowser.png");
  }

  void display() {
    image(badGuy, badLoc.x, badLoc.y);
    //lives
    if (badLoc.x-pow.x <= 20 &&  badLoc.y-pow.y <= 20) {
      badLives--;
      pow.x = finalRectX;
      fireNum=1;
    }
    if (badLives==3) {
      fill(255, 0, 0);
      rectMode(CORNERS);
      rect(badLivesLoc1.x, badLivesLoc1.y, badLivesLoc2.x, badLivesLoc2.y);
    }

    if (badLives == 2) {
      badLivesLoc2.x=400;
    }

    if (badLives == 1) {
      fill(255, 0, 0);
      rectMode(CORNERS);
      rect(badLivesLoc1.x, badLivesLoc1.y, badLivesLoc2.x, badLivesLoc2.y);
    }

    if (badLives == 0) {
      badGuyDie = true;
    }

    if (badGuyDie == true) {
      endGame = true;
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

