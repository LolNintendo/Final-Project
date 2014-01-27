class CharacterOne {
  boolean marioReg;
  boolean sonicReg;

  CharacterOne() {
    marioReg = true;
    sonicReg = true;
  }


  void show() {
    if (mario == true) {
      if (marioJ == true) {
        marioReg = false;
        image(marioJump, loc.x, loc.y);
      }
      if (marioReg == true) {
        image(marioRun, loc.x, loc.y);
      }
    }

    if (sonic == true) {
      if (sonicJ == true) {
        sonicReg = false;
        image(sonicJump, loc.x, loc.y);
      }
      if (sonicReg == true) {
        image(sonicRun, loc.x, loc.y);
      }
    }
  }


  void jump() {
    loc.y=300;
  }
  void time() {
    currentTime= millis();
    if (currentTime-oldTime>1000) {
      loc.y=315;
      oldTime=currentTime;
    }
  }
}

