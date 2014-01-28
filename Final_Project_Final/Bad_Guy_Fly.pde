class Fly {
  PVector flyLoc;
  boolean flyB;
  PVector flyLocBall;
 
  Fly() {
    flyB=false;
   flyLoc= new PVector(width, height-400); 
     flyLocBall= new PVector(flyLoc.x,flyLoc.y); 
} 
  void show() {
println(flyLocBall.y);
    if (flyNum==1) {
      flyB=true;
    }
    if (dPressed>10) {
      flyLoc.x= flyLoc.x- flyMove;  
      //   flyLoc.y=flyLoc.y-flyMoveY;
      rectMode(CENTER);
      rect(flyLoc.x, flyLoc.y, 50, 50);
    }
    if (flyLoc.x<50) {
      flyMove=-flyMove;
    }
    if (flyLoc.x>width) {
      flyMove=-flyMove;
    }
    flyLocBall.x=flyLoc.x;
    if (flyBall<2) {
      flyBallBoolean=true;
    }
    if(flyBallBoolean==true){
      ellipse(flyLocBall.x,flyLocBall.y,50,50);
      flyLocBall.y=flyLocBall.y+10;
    }
    //ERROR
    //EROOROROROORORORO Keep moving dowmn doeset stop moving
    if(flyLocBall.y>400){
     flyMoveY=0;
    }
    //    if (flyLoc.y>350) {
    //      flyMoveY=-flyMoveY;
    //    }
    //
    //    if (flyLoc.y>50) {
    //      flyMoveY=-flyMoveY;
  }
}

