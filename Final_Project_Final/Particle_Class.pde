class Particle{
  PVector loc, vel, acc;
  int d;
  float hue;
  int lives;
  
  Particle(float x, float y){
    loc = new PVector (x,y);
    vel = new PVector (random(-1,1), random(-2, 0));
    acc = new PVector (0, .01);
    d = 20;
    hue = random(255);
    lives = 200;
  }
  
  void display(){
    fill(random(255), random(255), random(255));
    ellipse(loc.x, loc.y, d, d);
    stroke(hue, hue, hue, 100);
    strokeWeight(20);
  }
  
  void update(){
    vel.add(acc);
    loc.add(vel);
    lives--;
  }
}
