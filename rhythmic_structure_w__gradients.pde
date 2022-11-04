float nin, nout, energy, s, r;

void setup() {
  background(100);
  strokeWeight(.2);
  stroke(255);
  fill(127);
  colorMode(RGB, 400, 0, height );
  size(1000, 1000);

  //variable for noise
  s = 0; 
  r = 0; 
  nin = 0;
  nout = 0;
}



void draw() {
  //for loop
  for (int y =0; y < height; y = y +10) {
    for (int x = 0; x < width; x = x + 10) {

  //draw circles and squares position and dimensions
      ellipse(x, y, random(10, 15), random(10, 15));
      rect(x, y, random(50, 100), random(50, 100));
      rect(x, y, s, r);
      fill(random(255), random(255), random(255));

      //ellipse(x, y, 75, 75);
      
      //noise
      energy = energy + 10;
      nin = nin + energy;
      nout = nout - energy;
      s = map(noise(nin), 0, .75, 6, 15);
      
      
      //more circles 
      ellipse(random(0, width), random(0, width), s, r);
    }
  }
}
