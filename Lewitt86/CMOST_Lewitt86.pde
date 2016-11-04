
size( 1000, 500 );

background(255);

stroke(0, 64);

for (int numberOfLines = 0; numberOfLines < 1000; numberOfLines += 1) 
{
  PVector point1 = new PVector( random(width), random(height) );
  PVector point2 = new PVector( random(-1,1), random(-1,1) );
  point2.normalize(); 
  line(point1.x, point1.y, point1.x+point2.x*30, point1.y+point2.y*30);

//  line( random(width), random(height), random(width), random(height) );
}

