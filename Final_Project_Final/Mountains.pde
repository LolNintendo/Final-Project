class Mount {
  PVector mountLoc;
  boolean mountB;
  Mount() {
    mountB=false;
    mountLoc= new PVector(width+60, height-172);
  } 

  //displaying the mountain and moving it

  void show() {
    imageMode(CENTER);
    image(Mount, mountLoc.x, mountLoc.y);
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
      mountLoc.x=width+60;
    }
  }
}

