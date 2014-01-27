class CharacterOne {
  //  PVector loc;

  CharacterOne() {
    //    loc = new PVector(50, 375);
  }


  void show() {
    if (mario == true) {
      image(marioRun, loc.x, loc.y);
      
      if (marioJ == true) {
        image(marioJump, loc.x, loc.y);
      }
    }

    if (sonic == true) {
      image(sonicRun, loc.x, loc.y);
      
      if (sonicJ == true) {
        image(sonicJump, loc.x, loc.y);
      }
    }
  }


  void jump() {
    loc.y=300;
  }
  void time() {
    currentTime= millis();
    if (currentTime-oldTime>1000) {
      loc.y=375;
      oldTime=currentTime;
    }
  }
}

