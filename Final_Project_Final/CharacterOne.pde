class CharacterOne {
  boolean marioReg;
  boolean sonicReg;

  CharacterOne() {
    marioReg = true;
    sonicReg = true;
  }


  void show() {
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
  
  void finalShow(){
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
  
}

