class Pipe {
  //  boolean pipeB;
  PVector pipeLoc;

  Pipe() {
    pipeB=false;
    pipeLoc = new PVector(width, height-125);
  } 

  void show() {
    if (dPressed==100) {
      pipeB=true;
      movePipe=15;
    } 
    if (pipeB==true) {
      rectMode(CENTER);
      fill(0, 255, 0);
      rect(pipeLoc.x, pipeLoc.y, 100, 50);
      loc.x=loc.x+movePipe;
    }
    if (loc.dist(pipeLoc) < 25) {
      battle = true;
    }
  }
}

