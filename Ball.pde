class Ball{
  
  
  
color c; 
PVector location;  // Location of shape
PVector velocity;  // Velocity of shape
PVector gravity;   // Gravity acts at the shape's acceleration

BeatDetect beat;
public Ball() {
  beat = new BeatDetect();
  location = new PVector(100,100);
  velocity = new PVector(1.5,2.1);
  gravity = new PVector(0,0.2);
  c=color(255,0,255,29);  

}

void show() {
  background(0);
  fill(255,0,255);
  //box(255);
 move();
 checkEdge();
 drawLine(location.x,location.y,c);

 
}

void move(){
  // Add velocity to the location.
  location.add(velocity);
  // Add gravity to velocity
  beat.detect(jingle.mix);
  stroke(255);
  strokeWeight(2);
  if(beat.isOnset()){c=randColor();}
  
  
}

void checkEdge(){
   // Bounce off edges
  if ((location.x > 500) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity.y = velocity.y * -0.95; 
    location.y = height;
  }
  
}

 void drawLine(float x, float y,color a){
   
 
 for(int i = 0; i < jingle.bufferSize() - 1; i++)
    {
      
      stroke(a);
      strokeWeight(2);
      float x1 = map( i, 0, jingle.bufferSize(), 0, width/16);
      float x2 = map( i+1, 0, jingle.bufferSize(), 0, width/16 );
      line( x+ x1, jingle.mix.get(i)*50, y+ x2, 50 + jingle.mix.get(i+1)*50 );
      //line( x1, jingle.right.get(i)*50, x2, 150 + jingle.right.get(i+1)*50 );
    }
    
 }
 
 
color randColor(){
  return color(random(255),random(255),random(255),random(255));
  
}

}