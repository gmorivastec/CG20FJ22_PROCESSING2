// isolating transformations
// hierarchical transformations
float rotation = 0;
float rotationBase1 = 0;
float rotationTip1 = 0;
float rotationBase2 = 0;
float rotationTip2 = 0;

void setup() {
  size(800, 800, P3D);
  
  // color of the line in your figures
  stroke(255, 212, 143);
  
  // just draw lines
  noFill();
  
}

// checking homework
void draw() {
  homeworkCheck();
}

void homeworkCheck() {

  if(keyPressed){
    if(key == 'r') rotation += 0.01f;
    if(key == 'f') rotation -= 0.01f;
    if(key == '1') rotationBase1 += 0.01f;
    if(key == 'q') rotationBase1 -= 0.01f;
    if(key == 'a') rotationTip1 += 0.01f;
    if(key == 'z') rotationTip1 -= 0.01f;
    if(key == '2') rotationBase2 += 0.01f;
    if(key == 'w') rotationBase2 -= 0.01f;
    if(key == 's') rotationTip2 += 0.01f;
    if(key == 'x') rotationTip2 -= 0.01f;
  }
  
  background(0);
  
  
  translate(width/2, height/2 + 100);
  rotateY(rotation);
  
  // main part
  pushMatrix();
  scale(2, 2, 1);
  box(100);
  popMatrix();
  
  // base finger 1
  pushMatrix();
  
  // put it in place
  translate(-50, -100);
    
  rotateX(rotationBase1);
  translate(0, -50);
  
  pushMatrix();
  scale(0.3f, 1, 1);
  box(100);
  popMatrix();
    
  // we will put the code for the tip here
  pushMatrix();
  translate(0, -50, 0);
  rotateX(rotationTip1);
  translate(0, -50, 0);
  scale(0.3f, 1, 1);
  box(100);
  popMatrix();
  
  popMatrix();  
  // base finger 1
}

void classNotes() {

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
  
  // THE SOLAR SYSTEM
  // hierarchical transformations
  // hierarchy - relationship between objects
  
  pushMatrix(); 
  // each time we pop matrix 
  // we retrieve the last pushed matrix and restore it as our state matrix
  
  translate(width/2 + 100, height/2 - 100, 0);
  rotateY(rotation);
  sphere(100);
  
  // if you have several planets you must isolate each one
  pushMatrix();  
  translate(150, 0, 0);
  sphere(30);  
  
  // a satelite!
  pushMatrix();
  rotateY(rotation);
  translate(60, 0, 0);
  sphere(10);
  popMatrix();
  
  popMatrix();
  
  pushMatrix();
  translate (0, 150, 0);
  sphere(20);
  popMatrix();
  
  popMatrix();
  
  box(100);
  
  rotation += 0.01f;
}
