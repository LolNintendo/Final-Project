class Pipe {
  //  boolean pipeB;
  PVector pipeLoc;
  PImage pipe;

  Pipe() {
    pipeB=false;
    pipeLoc = new PVector(width, height-125);
    pipe = loadImage("pipe.png");
  } 

  void show() {
    if (dPressed==2) {
      pipeB=true;
      movePipe=15;
    } 
    if (pipeB==true) {
      imageMode(CENTER);
      image(pipe, pipeLoc.x, pipeLoc.y);
      loc.x=loc.x+movePipe;
    }
    if (loc.dist(pipeLoc) < 25) {
      battle = true;
    }
  }
}

