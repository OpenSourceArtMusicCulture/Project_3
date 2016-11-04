class Planet {
  PVector pos, vel, acc, lNoise;
  float rad;

  Planet() {
    rad = random(50, 100);
    pos = PVector.random3D();
    pos.mult(100);
    vel = PVector.random3D();   
    acc = new PVector(0, 0);
    lNoise = PVector.random3D();
    lNoise.mult(.15);
  }

  void update() {
    acc.set(0, 0, 0);
    PVector centering = pos.copy();
    centering.normalize().mult(-.41);
    acc.add(centering);

    acc.add(
      noise(
        pos.x / 500 + gOffset.x + lNoise.x,
        pos.y / 500,
        pos.z / 500)
        - .5,
      noise(
        pos.x / 500,
        pos.y / 500 + gOffset.y  + lNoise.y,
        pos.z / 500)
        - .5,
      noise(
        pos.x / 500,
        pos.y / 500,
        pos.z / 500 + gOffset.z + lNoise.z)
        - .5);
    
    vel.add(acc);
    vel.setMag(10);
    pos.add(vel);     
  }

  void display() {
    noStroke();

    float d = map(pos.dist(camPos), 1000, 2000, 255, 0);
    //fill(255);
    fill(d);
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    sphere(rad);
    popMatrix();
  }
}