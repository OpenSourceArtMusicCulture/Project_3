class Particle {
  float rad;
  PVector pos, vel, acc;
  color c;

  Particle() {
    rad = random(10, 30);
    pos = new PVector(mouseX, mouseY);
    vel = new PVector(random(-20, 20), random(-10, 10));
    acc = new PVector(0, 0);
    c  = color(100, random(100, 255), 100);
  }

  void update() {
    vel.add(0, gravity);
    pos.add(vel);
  }

  void render() {
    fill(c);
    ellipse(pos.x, pos.y, rad, rad);
  }
}