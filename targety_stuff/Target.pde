class Target extends Particle {
  float rot, rotV;
 
  Target() {
    rad = random(50, 100);
    pos = new PVector(random(-10, width+10), height+100);
    vel = new PVector(random(-10, 10), random(-100, -50));
    rot = 0.0;
    rotV = random(-PI/4, PI/4);
  }

  void update(){
   super.update();
   rot += rotV;
  }


  void render(PImage myImage) {
    fill(255);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rot);
    image(myImage, 0,0);
    popMatrix();
    //fill(0, 0, 255);
    //ellipse(pos.x, pos.y, rad, rad);
  }

  boolean hit(int x, int y) {
    if ( dist(x, y, pos.x, pos.y) < rad)
      return true;
    else
      return false;
  }
}