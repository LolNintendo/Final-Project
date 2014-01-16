class Bush {
  PVector bushLoc;
  boolean bushB;
  Bush() {
    bushB=false;
    bushLoc= new PVector(width+15, height-100);
  } 
  void show() {
    image(Bush1, bushLoc.x, bushLoc.y);
    if (bushNum==1) {
      bushB=true;
    }
    if (bushB==true) {
      bushLoc.x= bushLoc.x- bushMove;
  bushMove=0;  
  }
    if (bushLoc.x<-25) {
      bushNum=2;
      bushB=false;
    }
    if (bushB==false) { 
      bushLoc.x=width+25;
    }
  }
}

