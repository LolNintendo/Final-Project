class CharacterOne {
  boolean marioReg;
  boolean sonicReg;
  int lives;
  PImage life;
  PVector lifeLoc;
  boolean gameOver;
  PVector finalLoc;

  CharacterOne() {
    marioReg = true;
    sonicReg = true;
    lives = 3;
    life = loadImage("Power.png");
    lifeLoc = new PVector(200, 130);
    gameOver = false;
    finalLoc = new PVector (finalRectX, loc.y);
    lifeLoss = false;
  }


  void show() {
    imageMode(CENTER);
    if (mario == true) {
      if (marioJ == true && loc.y < 375) {
        marioReg = false;
        image(marioJump, loc.x, loc.y);
      }
      else {
        image(marioRun, loc.x, loc.y);
      }
    }

    if (sonic == true) {
      if (sonicJ == true && loc.y < 375) {
        sonicReg = false;
        image(sonicJump, loc.x, loc.y);
      }
      else {
        image(sonicRun, loc.x, loc.y);
      }
    }
  }


  void jump() {
    loc.y=250;
  }
  void time() {
    currentTime= millis();
    if (currentTime-oldTime>1000) {
      loc.y=375;
      oldTime=currentTime;
    }
  }

  void battleShow() {
    imageMode(CENTER);

    if (mario == true) {
      if (marioJ == true && loc.y < 375) {
        marioReg = false;
        image(marioJump, battleRectX, loc.y);
      }
      else {
        image(marioRun, battleRectX, loc.y);
      }
    }

    if (sonic == true) {
      if (sonicJ == true && loc.y < 375) {
        sonicReg = false;
        image(sonicJump, battleRectX, loc.y);
      }
      else {
        image(sonicRun, battleRectX, loc.y);
      }
    }
  }

  void finalShow() {  
    imageMode(CENTER);


    fill(0, 255, 0);
    ellipse(finalRectX, loc.y, 60, 60);





    if (mario == true) {
      if (marioJ == true && loc.y < 375) {
        marioReg = false;
        image(marioJump, finalRectX, loc.y);
      }
      else {
        image(marioRun, finalRectX, loc.y);
      }
    }

    if (sonic == true) {
      if (sonicJ == true && loc.y < 375) {
        sonicReg = false;
        image(sonicJump, finalRectX, loc.y);
      }
      else {
        image(sonicRun, finalRectX, loc.y);
      }
    }
  }

  void attack() {
    if (fireNum%2==0) {
      fill(255, 0, 0, 0);
      ellipse(pow.x, pow.y, 50, 50);
      image(fireBall, pow.x, pow.y); 
      pow.x= pow.x+15;
    }
    if (pow.x>500) {
      fireNum=1; 
      fire=false;
      pow.x=finalRectX;
    }
  }





  void battleLives() {
    if (attackLoc.dist(finalLoc) < 43) {
      lifeLoss = true;
      if (lifeLoss == true) {
        lives--;
      }
    }
  }

  void showLives() {
    println(lives);
    if (lives == 3) {
      imageMode(CENTER);
      image(life, lifeLoc.x, lifeLoc.y);
      image(life, lifeLoc.x + 35, lifeLoc.y);
      image(life, lifeLoc.x + 70, lifeLoc.y);
    }
    if (lives == 2) {
      imageMode(CENTER);
      image(life, lifeLoc.x, lifeLoc.y);
      image(life, lifeLoc.x + 35, lifeLoc.y);
    }
    if (lives == 1) {
      imageMode(CENTER);
      image(life, lifeLoc.x, lifeLoc.y);
    }
    if (lives == 0) {
      gameOver = true;
    }
  }

  void youLose() {
    if (gameOver == true) {
      //background(0);
    }
  }
}

//FIX MARIO LIVESSSSSS
//DIES WHEN NOT DEAD
//background

