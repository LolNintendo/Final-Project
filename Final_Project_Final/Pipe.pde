class Pipe {
  //  boolean pipeB;
  PVector pipeLoc;
  PImage pipe;

  Pipe() {
    pipeB=false;
    pipeLoc = new PVector(width, height-125);
    pipe = loadImage("pipe.png");
  } 

//dispays pipe after 75 moves and creates stage transition
  void show() {
    if (dPressed == 65){
      gNum = 2;
    }
    if (dPressed==75) {
      pipeB=true;
      movePipe=15;
      startLife = 3;
    } 
    if (pipeB==true) {
      imageMode(CENTER);
      image(pipe, pipeLoc.x, pipeLoc.y);
      loc.x=loc.x+movePipe;
    }
    if (loc.dist(pipeLoc) < 25 || loc.x > width) {
      battle = true;
      lives = 3;
    }
  }
}

