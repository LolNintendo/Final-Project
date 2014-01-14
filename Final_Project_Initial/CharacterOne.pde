class CharacterOne {
//  PVector loc;

  CharacterOne() {
//    loc = new PVector(50, 375);
  }


  void show() {
    rectMode( CENTER);
    fill(clo);
    rect(loc.x, loc.y, 50, 50);
  }


  void jump() {
    loc.y=300;
  }
 void time(){
  currentTime= millis();
   if (currentTime-oldTime>1000) {
      loc.y=375;
  oldTime=currentTime;  
   }
}
}
