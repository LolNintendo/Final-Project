class CharacterOne {
//  PVector loc;

  CharacterOne() {
//    loc = new PVector(50, 375);
  }


  void show() {
    rectMode( CENTER);
    fill(0);
    rect(loc.x, loc.y, 50, 50);
  }


  void jump() {
    loc.y=300;
  }
 void time(){
  currentTime= millis();
   if (currentTime-oldTime>1250) {
      loc.y=375;
  oldTime=currentTime;  
   }
}
}
