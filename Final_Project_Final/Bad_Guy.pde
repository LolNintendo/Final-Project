class BadGuy {
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
    badLivesLoc1= new PVector(75, 50);
    badLivesLoc2= new PVector(400, 80);
    shoot=false;
    badLives= 5;
    badGuyDie = false;

    badGuy = loadImage("Bowser.png");
  }

  //displays bad guy
  void display() {
    println(shoot);
    fill(255, 0, 0, 0);
    rectMode(CENTER);
    rect(badLoc.x, badLoc.y, 100, 120);
    imageMode(CENTER);
    image(badGuy, badLoc.x, badLoc.y);

    //if hit by the character's fireball, loses a life and the fireball is reset
    if (pow.x + 25 > badLoc.x - 50 && pow.x - 25 < badLoc.x + 50 && pow.y + 25 > badLoc.y - 60 && pow.y - 25 < badLoc.y + 60) {
      badLives--;
      pow.x = finalRectX;
      fireNum=1;
    }

    //displaying the bad guy's lives (portions of rectangle)
    if (badLives == 5) {
      fill(255, 0, 0);
      rectMode(CORNERS);
      rect(badLivesLoc1.x, badLivesLoc1.y, badLivesLoc2.x, badLivesLoc2.y);
    }

    if (badLives == 4) {
      badLivesLoc2.x=300;
      fill(255, 0, 0);
      rectMode(CORNERS);
      rect(badLivesLoc1.x, badLivesLoc1.y, badLivesLoc2.x, badLivesLoc2.y);
    }

    if (badLives == 3) {
      badLivesLoc2.x=225;
      fill(255, 0, 0);
      rectMode(CORNERS);
      rect(badLivesLoc1.x, badLivesLoc1.y, badLivesLoc2.x, badLivesLoc2.y);
    }

    if (badLives == 2) {
      badLivesLoc2.x=150;
      fill(255, 0, 0);
      rectMode(CORNERS);
      rect(badLivesLoc1.x, badLivesLoc1.y, badLivesLoc2.x, badLivesLoc2.y);
    }

    if (badLives == 1) {
      badLivesLoc2.x=100;
      fill(255, 0, 0);
      rectMode(CORNERS);
      rect(badLivesLoc1.x, badLivesLoc1.y, badLivesLoc2.x, badLivesLoc2.y);
    }

    if (badLives == 0) {
      //bad guy dies
      badGuyDie = true;
    }

    if (badGuyDie == true) {
      //end of the game
      endGame = true;
    }
  }

  //println(badLives);


  //moves bad guy in constant up-down axis
  void move() {

    badLoc.y = badLoc.y-m;

    if (badLoc.y <=225) {
      m=-m;
    }
    if (badLoc.y >= 360) {
      m=-m;
    }
  }

  //bad guy attacks by firing at character
  void attack() {
    if (frameCount%100==0 && lifeLoss == false) {
      attackLoc.x=badLoc.x;
      attackLoc.y=badLoc.y;
      shoot=true;
      //oldTime2 = currentTime2;
    }

    //shoots fire at character
    if (shoot==true) {

      fill(0, 255, 0, 0);
      ellipse(attackLoc.x, attackLoc.y, 26, 26);

      image(bowserFire, attackLoc.x, attackLoc.y);
      attackLoc.x=attackLoc.x-15;
    }
    if (attackLoc.x<0) {
      shoot=false;
    }

    //reset lives
    if (lifeLoss == true) {
      shoot = false;
      attackLoc.set(badLoc.x, badLoc.y);
      lifeLoss = false;
    }
  }
}

