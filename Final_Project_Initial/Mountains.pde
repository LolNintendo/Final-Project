class Mount {
  PVector mountLoc;
  boolean mountB;
  Mount() {
    mountB=false;
    mountLoc= new PVector(width+15, height-130);
  } 
  void show() {
    rectMode(CENTER);
    rect(mountLoc.x, mountLoc.y, 30, 60);
    if (mountNum==1) {
      mountB=true;
    }
    if (mountB==true) {
      mountLoc.x= mountLoc.x- mountMove;
  mountMove=0;  
  }
    if (mountLoc.x<-25) {
      mountNum=2;
      mountB=false;
    }
    if (mountB==false) { 
      mountLoc.x=width+25;
    }
  }
}

