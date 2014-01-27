class Bush2 {
  PVector bushLoc;
  boolean bushB;
  Bush2() {
    bushB=false;
    bushLoc= new PVector(width+100, height-155);
  } 
  void show() {
    imageMode(CENTER);
    image(Bush2, bushLoc.x, bushLoc.y);
    if (bushTwoNum==1) {
      bushB=true;
    }
    if (bushB==true) {
      bushLoc.x= bushLoc.x- bushTwoMove;
  bushTwoMove=0;  
  }
    if (bushLoc.x<-25) {
      bushTwoNum=2;
      bushB=false;
    }
    if (bushB==false) { 
      bushLoc.x=width+100;
    }
  }
}

