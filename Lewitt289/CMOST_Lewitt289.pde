
size( 1000, 500 );

background(0);

stroke(255);

//center
for(int  numberOfLines = 0; numberOfLines < 24; numberOfLines += 1)
{
  line( 500, 250, random(width), random(height) );
}

//edges
for(int  numberOfLines = 0; numberOfLines < 12; numberOfLines += 1)
{
  line( 0, 0, random(width), random(height) );  //top - left
  line( width/2, 0, random(width), random(height) );  //top - middle
  line( width, 0, random(width), random(height) );  //top - right
  line( 0, height/2, random(width), random(height) );  //middle - left
  line( 0, height, random(width), random(height) );  //middle - right
  line( 0, height, random(width), random(height) );  //bottom - left
  line( width/2, height, random(width), random(height) );  //bottom - middle
  line( width, height, random(width), random(height) );  //bottom - right
}


