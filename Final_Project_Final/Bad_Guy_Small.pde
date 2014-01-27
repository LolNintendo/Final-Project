class Goomba {
  PVector gLoc;
  boolean gB;
  
  Goomba() {
    gB=false;
    gLoc= new PVector(width + 100, height-120);
  } 
  void show() {
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

