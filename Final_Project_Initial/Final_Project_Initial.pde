boolean pipeB;
  PVector loc;
 float movePipe;
 
CharacterOne c;
Cloud cl;
float cloudNum;
float cloudMove;

Cloud2 c2;
float cloudTwoNum;
float cloudTwoMove;

Mount m1;
float mountNum;
float mountMove;

float bushNum;
float bushMove;
Bush b1;

float bushTwoNum;
float bushTwoMove;
Bush2 b2;

float currentTime;
float oldTime;

float dPressed;

Pipe p1;

void setup() {
movePipe=0;
  pipeB=false;
    loc = new PVector(50, 375);
  dPressed=0;
  size(500, 500);
  c = new CharacterOne();
  cl = new Cloud();
  c2 = new Cloud2();
  b1 = new Bush();
  b2 = new Bush2();
  m1= new Mount();
  p1 = new Pipe();
}

void draw() {
  background(0, 0, 200);
  rectMode(CENTER);
  fill(0, 255, 0);
  rect(width/2, height-50, 800, 100);
  c.show();
  c.time();
  //println(cloudNum);
  cl.show();
  c2.show();
  b1.show();
  b2.show();
  m1.show();
  p1.show();
  //println(bushNum);
  //println(millis());
  println(pipeB);
 
}

void keyPressed() {
    if (key == 'd') {
      dPressed+=1;
      //everytime the button is pressed a random number appears for all classes, if their number is chosen then they appear
      //this one is specifically for clouds
      cloudNum= int(random(18));
      cloudMove=60;
      cloudTwoNum = int(random(18));
      cloudTwoMove = 70;

      //this is for bush
      bushNum= int(random(13));
      bushMove=50;

      //this is for two bushes
      bushTwoNum= int(random(11));
      bushTwoMove=50;

      mountNum= int(random(9));
      mountMove=50;
     
      
    }

  if (key== 'h') {
    c.jump();
  }
}

