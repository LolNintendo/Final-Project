class CharacterOne {
  boolean marioReg;
  boolean sonicReg;
  PImage life;
  PVector lifeLoc;
  PVector finalLoc;
  PVector sLife;
  boolean moveUp;
  boolean fall;

  CharacterOne() {
    marioReg = true;
    sonicReg = true;
    life = loadImage("Power.png");
    lifeLoc = new PVector(200, 130);
    finalLoc = new PVector (finalRectX, loc.y);
    lifeLoss = false;
    sLife = new PVector (35, 35);
    moveUp = false;
    fall = false;
  }


  void show() {
    
    //displays characters and their jump images
    
    println(startLife);
    imageMode(CENTER);
    if (mario == true) {
      if (marioJ == true && loc.y < 375) {
        marioReg = false;
        image(marioJump, loc.x, loc.y);
      }
      else {
        fill(0, 255, 0, 0);
        ellipse(loc.x, loc.y, 50, 50);

        image(marioRun, loc.x, loc.y);
      }
    }

    if (sonic == true) {
      if (sonicJ == true && loc.y < 375) {
        sonicReg = false;
        image(sonicJump, loc.x, loc.y);
      }
      else {

        fill(0, 255, 0, 0);
        ellipse(loc.x, loc.y, 60, 60);

        image(sonicRun, loc.x, loc.y);
      }
    }
  }

//function for character to jump
  void jump() {
    loc.y=250;
  }
  
  //timer that controls when the character falls back down from a jump
  void time() {
    currentTime= millis();
    if (currentTime-oldTime>1500) {
      loc.y=375;
      oldTime=currentTime;
    }
  }

//lives in first stage and their representation 
  void startLives() {
    if (mario == true) {
      if (gLoc.dist(loc) < 25) {
        startLife--;
        gLoc.x = 700;
      }
      if (startLife == 3) {
        imageMode(CENTER);
        image(life, sLife.x, sLife.y);
        image(life, sLife.x + 35, sLife.y);
        image(life, sLife.x + 70, sLife.y);
      }
      if (startLife == 2) {
        imageMode(CENTER);
        image(life, sLife.x, sLife.y);
        image(life, sLife.x + 35, sLife.y);
      }
      if (startLife == 1) {
        imageMode(CENTER);
        image(life, sLife.x, sLife.y);
      }
      if (startLife == 0) {
        if (loc.y > 100) {
          moveUp = true;
          if (moveUp ==true) {
            loc.y -= 15;
          }
        }
        if (loc.y <= 100) {
          moveUp = false;
          fall = true;
        }
        if (fall == true) {
          loc.y += 20;
          loc.x += 1;
          if (loc.y > height) {
            gameOver = true;
            fill(255,0,0);
            textSize(35);
            text("Game Over", width/2, height/2);
          }
        }
      }
    }

    if (sonic == true) {
      if (gLoc.dist(loc) < 35) {
        startLife--;
        gLoc.x = 700;
      }
      if (startLife == 3) {
        imageMode(CENTER);
        image(life, sLife.x, sLife.y);
        image(life, sLife.x + 35, sLife.y);
        image(life, sLife.x + 70, sLife.y);
      }
      if (startLife == 2) {
        imageMode(CENTER);
        image(life, sLife.x, sLife.y);
        image(life, sLife.x + 35, sLife.y);
      }
      if (startLife == 1) {
        imageMode(CENTER);
        image(life, sLife.x, sLife.y);
      }
      if (startLife == 0) {
        //gameOver = true;
        if (loc.y > 150) {
          moveUp = true;
          if (moveUp ==true) {
            loc.y -= 15;
          }
        }
        if (loc.y <= 150) {
          moveUp = false;
          fall = true;
        }
        if (fall == true) {
          loc.y += 20;
          loc.x += 1;
          if (loc.y > height) {
            gameOver = true;
            fill(0,255,0);
            textSize(35);
            text("Game Over", width/2, height/2);
          }
        }
      }
    }
  }

//battle character funcions
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

//Bowser battle character
  void finalShow() {  
    imageMode(CENTER);

    fill(0, 255, 0, 0);
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


//character attack
  void attack() {
    if (fireNum%2==0) {
      pow.y=loc.y;
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

//character lives during battle
  void battleLives() {
    if (attackLoc.dist(finalLoc) < 43) {
      lifeLoss = true;
      if (lifeLoss == true) {
        lives--;
      }
    }
  }

//displaying the character's lives
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

//losing the game; game over
  void youLose() {
    if (gameOver == true) {
      background(0);
      textSize(35);
      text("Game Over", width/2, height/2);
    }
  }
}

