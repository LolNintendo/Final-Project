class Cloud2 {
  PVector cloudLoc;
  boolean cloudB;
  Cloud2() {
    cloudB=false;
    cloudLoc= new PVector(width+100, 160);
  } 

  //displaying the cloud and moving it
  void show() {
    imageMode(CENTER);
    image(Cloud2, cloudLoc.x, cloudLoc.y);
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
      cloudLoc.x=width+100;
    }
  }
}

