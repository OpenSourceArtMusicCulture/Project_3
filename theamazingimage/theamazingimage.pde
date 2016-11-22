
PImage img;

void setup() {
  size(1000, 676);
  img = loadImage("landscape.jpg");
  noStroke();
  background(255);
  ellipseMode(CENTER);
}

void draw() { 
  float m_width = map(mouseX, 0, width, 5, 100);
  float m_height = map(mouseY, 0, width, 5, 100);

  for (int i = 0; i < 20; ++i) {
    int x = int(random(img.width));
    int y = int(random(img.height));
    color pix = img.get(x, y);
    fill(pix, 128);
    ellipse(x, y, m_width, m_height);
  }
}