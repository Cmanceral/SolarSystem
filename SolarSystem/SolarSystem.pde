float rotation = 0;
float planetSize = 150;
float ringGrowth = 120;
float ringSize;

void setup() {
  size(1200, 1200);
  
}

void draw() {

  background(0);
  stars();
  translate(width/2, height/2);
  
  orbit(0, 0, 1);
  float planetX = 0;
  ringSize = 300;
  
  //SUN
  fill(255, 213, 0);
  planet(planetX, 0, 1);
  //
 
 
  //MERCURY
  pushMatrix();
  rotate(rotation*2.5);
  fill(203, 174, 129);
  planetX = (ringSize * 0.5);
  planet(planetX, 0, 0.12);
  popMatrix();
  
  //VENUS
  pushMatrix();
  rotate(rotation*2.3);
  fill(245, 131, 87);
  planetX = ringSize * 0.5 + ringGrowth * 0.5;
  planet(planetX, 0, 0.14);
  println(planetX);
  popMatrix();
 
 //EARTH
  pushMatrix();
  rotate(rotation*1.5);
  fill(65, 115, 247);
  planetX = ringSize * 0.5 + ringGrowth;
  planet(planetX, 0, 0.16);
  translate(planetX, 0);
  rotate(rotation);
  moon (30, 0, 0.05);
  popMatrix();
  
  //MARS
  pushMatrix();
  rotate(rotation*1.3);
  fill(250, 88, 63);
  planetX = ringSize * 0.5 + ringGrowth * 1.5;
  planet(planetX, 0, 0.13);
  popMatrix();
  
  // JUPITER
  pushMatrix();
  rotate(rotation);
  fill(203, 182, 96);
  planetX = ringSize * 0.5 + ringGrowth * 2;
  planet(planetX, 0, 0.28);
    pushMatrix();
      translate(planetX, 0);
      pushMatrix();
        rotate(rotation*1.5);
        moon (30, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.8);
        moon (45, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.2);
        moon (60, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.08);
        moon (75, 0, 0.05);
      popMatrix();
    popMatrix();
  popMatrix();
  
  // SATURN
  pushMatrix();
  rotate(rotation*0.7);
  fill(245, 235, 198);
  planetX = ringSize * 0.5 + ringGrowth * 2.5;
  planet(planetX, 0, 0.25);
  ring(planetX, 0, 0.31, 4);
    pushMatrix();
      translate(planetX, 0);
      pushMatrix();
        rotate(rotation*2.5);
        moon (30, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*1.5);
        moon (45, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation);
        moon (60, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.5);
        moon (75, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.2);
        moon (90, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.08);
        moon (105, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.05);
        moon (120, 0, 0.05);
      popMatrix();
    popMatrix();
  popMatrix();
 
  // URANUS
  pushMatrix();
  rotate(rotation*0.5);
  fill(137, 216, 234);
  planetX = ringSize * 0.5 + ringGrowth * 3;
  planet(planetX, 0, 0.19);
  pushMatrix();
      translate(planetX, 0);
      pushMatrix();
        rotate(rotation*2.5);
        moon (30, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*1.5);
        moon (45, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation);
        moon (60, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.5);
        moon (75, 0, 0.05);
      popMatrix();
      pushMatrix();
        rotate(rotation*0.2);
        moon (90, 0, 0.05);
      popMatrix();
    popMatrix();
  
  popMatrix();
  
  // NEPTUNE
  pushMatrix();
  rotate(rotation*0.2);
  fill(137, 154, 234);
  planetX = ringSize * 0.5 + ringGrowth * 3.5;
  planet(planetX, 0, 0.19);
  translate(planetX, 0);
  rotate(rotation);
  moon (30, 0, 0.05);
  popMatrix();
 
  
  rotation += 0.01;
}

void planet(float x, float y, float pSize) {
 
 // pushMatrix();
 // translate(width/2, height/2);
  noStroke();
  ellipse(x, y, planetSize*pSize, planetSize*pSize);
  //CHECK
  /*stroke(255, 0,0,50);
  line(0, 0, 0, 800);
  line (0,0, 800, 0);*/
 // popMatrix();
}

void orbit (int x, int y, int strokeSize) {
 // pushMatrix();
 // translate(width/2, height/2);
  stroke(255, 70);
  strokeWeight(strokeSize);
  noFill();
  int nRings = 8;
  ringSize = 300;
  for ( int i = 0; i < nRings; i++) {
    ellipse(x, y, ringSize, ringSize);
    ringSize += ringGrowth;
    //println(ringSize);
  }
 // popMatrix();
  
}

void ring(float x, float y, float pSize, float strokeSize){
  strokeWeight(strokeSize);
  stroke(121,110, 65);
  noFill();
  ellipse(x, y, planetSize*pSize, planetSize*pSize);
}

void moon(float x, float y, float pSize){
  noStroke();
  fill(127);
  ellipse(x, y, planetSize*pSize, planetSize*pSize);
}

void stars(){
  int nStars = 350;
  randomSeed(0);
  for (int i = 0; i < nStars; i ++){
    fill(255);
    ellipse(random(0, width),random(0,height), 2, 2);
  }
}
