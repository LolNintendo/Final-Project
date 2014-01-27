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
PImage powerStar;

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

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  flower= new PVector(250, 375);
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
  powerStar = loadImage("Power.png");

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

    if (start == true) {
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
      c.show();
      c.time();
      //println(bushNum);
      //println(millis());
      //println(pipeB);
      //println(battle);
      if (battle==true) {
        background(0);
        rectMode(CORNERS);
        fill(150);
        rect(0, 250, width, 410);
        rectMode(CENTER);
        fill(0);
        rect(battleRectX, loc.y, 50, 50);
        if (battleRectX < 50) {
          battleRectX+=movePipe;
        }
        if (battleRectX >= 400) {
          battleRectX+=movePipe;
        }
        if (battleRectX >= width) {
          tunnelEnd = true;
        }
        if (tunnelEnd == true) {

          rectMode(CENTER);
          background(255);
          fill(clo);
          rect(finalRectX, loc.y, 50, 50);
          //  background(255);
          bg1.display();
          bg1.attack();
          bg1.move();
          if (finalRectX < 50) {
            finalRectX+=movePipe;
          }
        }
      }
      //    if(fire==true &&){
      //      ellipse(pow.x+50,pow.y,50,50); 
      //      pow.x= pow.x+15;
      //    }
    }
  }
  if (battle==true) {
    fill(123, 43, 234);
    rect(flower.x, flower.y, 30, 30); 
    if (flower.x - battleRectX <= 40) {
      power = true;
    }
  }
  if (power==true) {
    flower.x=600;
    clo = 255;
  }
  //println(finalRectX);
  //println(power);
  if (fireNum%2==0) {
    ellipse(pow.x+50, pow.y, 50, 50); 
    pow.x= pow.x+15;
  }
  if (pow.x>500) {
    fireNum=1; 
    fire=false;
    pow.x=finalRectX;
  }
  println(fireNum);
  println(fire);

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

