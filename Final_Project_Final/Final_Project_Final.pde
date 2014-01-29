boolean pipeB;
PVector loc;
float movePipe;

PVector flower;

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
float clo;
Pipe p1;

boolean battle;
int battleRectX = -25;
PVector attackLoc;
PVector badLoc;


boolean tunnelEnd;

BadGuy bg1;

int finalRectX;
boolean fire;
int fireNum;
boolean power;
PVector pow;

PImage Bush1;
PImage Bush2;

PImage startFloor;
PImage Mount;

PImage badGuy1;

PImage Cloud1;
PImage Cloud2;

//characters
PImage sonicRun;
PImage marioRun;
PImage sonicJump;
PImage marioJump;
PImage kirbyRun;
PImage kirbyJump;

PImage bowser;
PImage fireBall;
PImage bowserFire;

boolean start;
boolean instructions;

PImage startScreen;

boolean chSelect;

PImage selectM;
PImage selectS;

boolean mario;
boolean sonic;

boolean marioJ;
boolean sonicJ;

boolean endGame;

PImage goomba;
float gNum;
float gMove;
Goomba g1;

PImage flowerPow;
PImage battleScreen;
PImage battleScreen2;

boolean lifeLoss;

PImage tunnelScreen;

PImage torch1;
PImage torch2;

boolean light1;
boolean light2;

float lightNum;

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  flower= new PVector(250, 390);
  fire=false;
  fireNum=1;
  movePipe=0;
  pipeB=false;
  loc = new PVector(25, 375);
  dPressed=0;
  size(500, 500);
  c = new CharacterOne();
  cl = new Cloud();
  c2 = new Cloud2();
  b1 = new Bush();
  b2 = new Bush2();
  m1= new Mount();
  p1 = new Pipe();

  battle = false;
  badLoc=new PVector(400, 300);
  attackLoc= new PVector(badLoc.x, badLoc.y);

  tunnelEnd = false;

  bg1 = new BadGuy();

  finalRectX = -25;
  pow= new PVector(finalRectX, loc.y);
  power = false;

  Bush1 = loadImage("Bush.png");
  Bush2 = loadImage("Bush2.png");

  startFloor = loadImage("Start Level Floor.png");
  Mount = loadImage("Mount.png");

  badGuy1 = loadImage("Bad Guy1.png");

  Cloud1 = loadImage("Cloud1.png");
  Cloud2 = loadImage("Cloud2.png");

  //character images
  sonicRun = loadImage("sonicRun.png");
  marioRun = loadImage("marioRun.png");
  sonicJump = loadImage("sonicJump.png");
  marioJump = loadImage("marioJump.png");
  kirbyRun = loadImage("kirbyRun.png");
  kirbyJump = loadImage("kirbyJump.png");

  bowser = loadImage("Bowser.png");
  fireBall = loadImage("Fire.png");

  start = false;
  startScreen = loadImage("Start Screen.jpeg");
  instructions = false;

  chSelect = false;

  selectM = loadImage("selectM.png");
  selectS = loadImage("selectS.png");

  mario = false;
  sonic = false;

  marioJ = false;
  sonicJ = false;

  endGame = false;

  goomba = loadImage("goomba.png");
  g1= new Goomba();

  flowerPow = loadImage ("flower.png");
  fireBall = loadImage ("Mario Fire.png");
  bowserFire = loadImage ("Bowser Fire.png");

  battleScreen = loadImage("Bowser Battle.png");
  lifeLoss = false;

  battleScreen2 = loadImage("Bowser Battle Piece.png");

  tunnelScreen = loadImage("Stones.png");

  torch1 = loadImage("Torch1.png");
  torch2 = loadImage("Torch2.png");

  light1 = true;
  light2 = false;

  particles.add(new Particle(width/2, 120));
}

void draw() {
  imageMode(CORNERS);
  image(startScreen, 0, 0, width, height);

  //start button 
  rectMode(CENTER);
  fill(75, 196, 88);
  rect(375, 355, 100, 50);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Info", 375, 370);

  //info button
  rectMode(CENTER);
  fill(75, 196, 88);
  rect(225, 355, 100, 50);
  fill(255);
  textAlign(CENTER);
  textSize(40);
  text("Start", 225, 370);

  if (instructions == true) {
    background(0);
    //home button
    rectMode(CENTER);
    fill(75, 196, 88);
    rect(375, 425, 126, 50);
    fill(255);
    textAlign(CENTER);
    textSize(40);
    text("Home", 375, 440);
  }

  else if (chSelect == true) {
    background(0);
    //characters
    imageMode(CENTER);
    textAlign(CENTER);
    rectMode(CENTER);
    image(selectM, 150, 270);
    fill(193, 100, 255);
    //MARIO
    rect(125, 100, 146, 60);
    fill(255);
    text("MARIO", 125, 117);
    image(selectS, 350, 250);
    fill(193, 100, 255);
    //SONIC
    rect(350, 60, 150, 60);
    fill(255);
    text("SONIC", 350, 75);
    //play button
    fill(75, 196, 88);
    rect(375, 425, 126, 50);
    fill(255);
    textAlign(CENTER);
    textSize(40);
    text("Play", 375, 440);
    //selection
    if (mario == true) {
      fill(254, 255, 15, 100);
      noStroke();
      rectMode(CORNERS);
      rect(35, 160, 230, 375);
    }
    if (sonic == true) {
      fill(254, 255, 15, 100);
      noStroke();
      rectMode(CORNERS);
      rect(245, 115, 455, 380);
    }

    if (mario == true && start == true || sonic == true && start == true) {
      clo=0;
      background(107, 136, 254);
      imageMode(CORNERS);
      image(startFloor, 0, -405, width, height);
      //println(cloudNum);
      cl.show();
      c2.show();
      b1.show();
      b2.show();
      m1.show();
      p1.show();
      g1.show();
      c.show();
      c.time();
      //println(bushNum);
      //println(millis());
      //println(pipeB);
      //println(battle);
      if (battle==true) {
        println(light1);
        background(0);
        imageMode(CORNERS);
        image(tunnelScreen, 0, 0, width, 50);
        image(tunnelScreen, 0, 50, width, 100);
        image(tunnelScreen, 0, 100, width, 150);
        image(tunnelScreen, 0, 150, width, 200);
        image(tunnelScreen, 0, 200, width, 250);

        image(tunnelScreen, 0, 410, width, 460);
        image(tunnelScreen, 0, 460, width, height);

        if (light1 == true) {

          imageMode(CENTER);
          image(torch1, 50, 300);
          image(torch1, 150, 300);
          image(torch1, 250, 300);
          image(torch1, 350, 300);
          image(torch1, 450, 300);
        }

        if (lightNum == 1) {
          light2 = !light2;
        }

        if (light2 == true) {
          imageMode(CENTER);
          image(torch2, 50, 300);
          image(torch2, 150, 300);
          image(torch2, 250, 300);
          image(torch2, 350, 300);
          image(torch2, 450, 300);
        }



        imageMode(CENTER);
        image(flowerPow, flower.x, flower.y); 
        if (flower.x - battleRectX <= 40) {
          power = true;
        }
        if (power==true) {
          flower.x=600;
          clo = 255;
        }
        c.battleShow();
        if (battleRectX < 50) {
          battleRectX+=movePipe;
        }
        if (battleRectX >= 400) {
          battleRectX+=movePipe;
        }
      }
      if (battleRectX >= width) {
        tunnelEnd = true;
      }
      if (tunnelEnd == true) {

        background(0);
        imageMode(CORNERS);
        image(battleScreen, 0, 100, width, height);
        imageMode(CORNERS);
        image(battleScreen2, 0, 415, width, 450);

        c.finalShow();
        c.attack();
        bg1.display();
        bg1.attack();
        bg1.move();
        c.battleLives();
        c.showLives();
        //c.youLose();
        if (finalRectX < 50) {
          finalRectX+=movePipe;
        }
      }

      //println(finalRectX);
      //println(power);

      //  println(fireNum);
      //  println(fire);
      //println(gNum);
    }
    c.youLose();
  }
  if (endGame == true) {
    particles.add(new Particle(100, 100));
    background(0);
    for (int i = particles.size()-1; i >= 0; i--) {
      Particle p = particles.get(i);
      p.display();
      p.update();
      if (p.lives <= 0) {
        particles.remove(i);
      }
    }
  }
}


void keyPressed() {
  if (key == 'd') {
    dPressed+=1;
    //everytime the button is pressed a random number appears for all classes, if their number is chosen then they appear
    //this one is specifically for clouds
    cloudNum= int(random(10));
    cloudMove=60;
    cloudTwoNum = int(random(10));
    cloudTwoMove = 70;

    //this is for bush
    bushNum= int(random(13));
    bushMove=50;

    //this is for two bushes
    bushTwoNum= int(random(11));
    bushTwoMove=50;

    mountNum= int(random(9));
    mountMove=50;

    gNum = int(random(7));
    gMove = 50;
    
    lightNum = int(random(3));
  }

  if (key== 'h') {
    c.jump();
  }

  if (key== 'd' && battle == true) {
    battleRectX += 15;
  }
  if (key=='g' && power== true) {
    fire= true;
    if (fire==true) {
      fireNum+=1;
    }
  }

  if (mario == true && key == 'h') {
    marioJ = true;
  }
  if (sonic == true && key == 'h') {
    sonicJ = true;
  }
}

void mousePressed() {
  if (mouseX > 175 && mouseX <275 && mouseY > 330 && mouseY < 380 && instructions == false) {
    chSelect = true;
  }
  if (mouseX > 325 && mouseX <425 && mouseY > 330 && mouseY < 380 && chSelect == false) {
    instructions = !instructions;
  }
  if (mouseX > 312 && mouseX < 438 && mouseY > 400 && mouseY < 450 && chSelect == true) {
    start = true;
  }
  if (mouseX > 312 && mouseX < 438 && mouseY > 400 && mouseY < 450 && chSelect == false) {
    instructions = !instructions;
  }
  if (chSelect == true && mouseX > 52 && mouseX < 198 && mouseY > 70 && mouseY < 130) {
    mario = !mario;
    sonic = false;
  }
  if (chSelect == true && mouseX > 275 && mouseX < 425 && mouseY > 30 && mouseY < 90) {
    sonic = !sonic;
    mario = false;
  }
}


//check sonic mario variables

