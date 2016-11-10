float gravity = 5.8;

PImage img;

ArrayList<Particle> particles = new ArrayList<Particle>();
ArrayList<Target> targets = new ArrayList<Target>();

void setup() {
  size(1000, 500);
  frameRate(30);
  noStroke();
  ellipseMode(CENTER);
  imageMode(CENTER);
  img = loadImage("target.png");
}

void draw() {
  background(128);

  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.update();
    if (p.pos.y > height + p.rad * 2)
      particles.remove(i);
    else
      p.render();
  }

  for (int i = targets.size()-1; i >= 0; i--) {
    Target t = targets.get(i);
    t.update();
    if (t.pos.y > height + t.rad * 2)
      targets.remove(i);
    else
      t.render(img);
  }
  //if (mousePressed == true)
  //  for (int i = 0; i< 30; ++i)
  //    particles.add(new Particle());
}

void keyPressed() {
  if (key == ' ')
    targets.add(new Target());
}

void mousePressed() {
  for (int i = targets.size()-1; i >= 0; i--) {
    Target t = targets.get(i);
    t.update();
    if ( t.hit(mouseX, mouseY) ) {
      targets.remove(i);
      for (int j = 0; j< 30; ++j){
        particles.add(new Particle());
      }
    }
  }
}