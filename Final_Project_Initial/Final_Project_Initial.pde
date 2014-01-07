CharacterOne c;
Cloud cl;
float cloudNum;
float cloudMove;

float bushNum;
float bushMove;
Bush b1;

float currentTime;
float oldTime;

void setup(){
 cloudNum= 5;
 cloudMove=0;
  size(500,500);
  c = new CharacterOne();
  cl = new Cloud();
  b1 = new Bush();

}

void draw(){
 background(0,0,200);
  rectMode(CENTER);
  fill(0, 255, 0);
  rect(width/2, height-50, 800, 100);
  c.show();
  c.time();
  //println(cloudNum);
  cl.show();
  b1.show();
//println(bushNum);
println(millis());
}

void keyPressed(){
  if(key == 'd'){
    //everytime the button is pressed a random number appears for all classes, if their number is chosen then they appear
//this one is specifically for clouds
    cloudNum= int(random(20));
 cloudMove=60;
 
 //this is for bush
 bushNum= int(random(16));
 bushMove=30;
  }
  
  if(key== 'h'){
    c.jump();
  }
  
  
}
  
  
