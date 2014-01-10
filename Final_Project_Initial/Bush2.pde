class Bush2 {
  PVector bushLoc;
  boolean bushB;
  Bush2() {
    bushB=false;
    bushLoc= new PVector(width+15, height-100);
  } 
  void show() {
    ellipse(bushLoc.x, bushLoc.y, 30, 30);
     ellipse(bushLoc.x+15, bushLoc.y, 30, 30);
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
      bushLoc.x=width+25;
    }
  }
}

