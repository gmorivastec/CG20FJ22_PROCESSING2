// isolating transformations
// hierarchical transformations

void setup() {
  size(800, 800, P3D);
  
  // color of the line in your figures
  stroke(255, 212, 143);
  
  // just draw lines
  noFill();
  
}

void draw() {

  background(0);
  
  // how to manage input
  // polling - poleo
  if(keyPressed){
    if(key == 'q') println("YOU PRESSED Q!");
  }
  
  // HOW TO ISOLATE TRANSFORMATIONS
  
  pushMatrix();
  // we have a stack of matrices that we can work with
  
  // making our lives easier
  translate(width/2, height/2, 0);
  
  rotateY(radians(30));
  
  // IMPORTANT NOTE: even if you use convenience methods the order remains inverted
  scale(2, 1, 1);
  
  // this is shear
  // basic transformations: translate, rotate, scale and shear
  //shearX(1);
  
  box(100);
  
  popMatrix();
  // each time we pop matrix 
  // we retrieve the last pushed matrix and restore it as our state matrix
  
  translate(width/2 + 100, height/2 - 100, 0);
  sphere(100);
}
