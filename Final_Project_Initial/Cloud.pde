class Cloud {
  PVector cloudLoc;
  boolean cloudB;
  Cloud() {
    cloudB=false;
    cloudLoc= new PVector(width+50, 50);
  } 
  void show() {
    imageMode(CENTER);
    image(Cloud1,cloudLoc.x, cloudLoc.y);
    if (cloudNum==1) {
      cloudB=true;
    }
    if (cloudB==true) {
    
      cloudLoc.x= cloudLoc.x- cloudMove;  
cloudMove=0;  
}
    if (cloudLoc.x<-25) {
      cloudNum=2;
      cloudB=false;
    }
    if (cloudB==false) { 
      cloudLoc.x=width+50;
    }
  }
}

