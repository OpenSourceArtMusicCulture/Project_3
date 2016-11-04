import peasy.*;

PeasyCam cam;


ArrayList<Planet> planets = new ArrayList<Planet>();
PVector gOffset = PVector.random3D(), camPos;

void setup() {
  size(640, 480, P3D);

  cam = new PeasyCam(this, 1500);

  for (int i = 0; i < 20; i++) {
    planets.add( new Planet());
  }

  sphereDetail(8);
}

void draw() {
  background(0);
  lights();

 camPos = new PVector(cam.getPosition()[0], cam.getPosition()[1], cam.getPosition()[2]); 
  for (Planet p : planets) {
    p.update();
    p.display();
  }
  
  gOffset.add(.01,.01,.01);

}