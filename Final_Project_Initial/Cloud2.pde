class Cloud2 {
  PVector cloudLoc;
  boolean cloudB;
  Cloud2() {
    cloudB=false;
    cloudLoc= new PVector(width+25, 160);
  } 
  void show() {
    ellipse(cloudLoc.x, cloudLoc.y, 50, 50);
    if (cloudTwoNum==1) {
      cloudB=true;
    }
    if (cloudB==true) {
    
      cloudLoc.x= cloudLoc.x- cloudTwoMove;  
cloudTwoMove=0;  
}
    if (cloudLoc.x<-25) {
      cloudTwoNum=2;
      cloudB=false;
    }
    if (cloudB==false) { 
      cloudLoc.x=width+25;
    }
  }
}

