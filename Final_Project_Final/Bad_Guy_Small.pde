class Goomba {
  boolean gB;
  
  Goomba() {
    gB=false;
  } 
  
  //displays goomba at random intervals
  //moves the goomba
  void show() {
    
    fill(0,255,0,0);
    ellipse(gLoc.x, gLoc.y,40,40);
    
    imageMode(CENTER);
    image(goomba, gLoc.x, gLoc.y);
    gLoc.x-=1;
    if (gNum==1) {
      gB=true;
    }
    if (gB==true) {
      gLoc.x= gLoc.x- gMove;
  gMove=0;  
  }
    if (gLoc.x<-25) {
      gNum=2;
      gB=false;
    }
    if (gB==false) { 
      gLoc.x=width+100;
    }
  }
}

