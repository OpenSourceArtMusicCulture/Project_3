//schotter

void setup(){
  size(200, 600);
  noFill();
  stroke(0);
  rectMode(CENTER);

  background(255);
  translate(20, 20);
  for (int i = 0; i < 12; i++){
    for (int j = 0; j < 24; j++){
      float randomX = random(-j, j) * 0.5;
      float randomY = random(-j, j) * 0.5;
      pushMatrix();
      translate(i*10+randomX,j*10+randomY);
      rotate(random(-j, j)*.05);
      rect(0, 0,10,10);
      popMatrix();
    }
  }
}


