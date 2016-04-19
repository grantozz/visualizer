class Circle implements Showable{
 public Circle(int r, color c){
   rotation=r;
    this.c=c;
    dr=2;
    db=1;
 }
  public Circle(){
   this(1,255);
 }
 public Circle(int r){
   this(r,255);
   
 }
 
 
 void show(){
    colorMode(RGB,255);
   changeColor();
   stroke(c);
   background(0);
   for(int r=0;r<360;r+=180/rotation){
    rotateX(radians(r));
    makeCircle(); 
   }
 
 }
 
 
 void setColor(color c){
   this.c=c;
   
 }
 
  void changeColor(){
    a=100;
    if(r>250){dr=-1;}
    if(r<20){dr=1;}
    if(b>150){db=-1;}
    if(b<20){db=1;}
    r+=dr;
    b+=db;
   c=color(r,200,b,a);
   
 }
 
 
 void makeCircle(){
   strokeWeight(2);
   float a = 0;
   float angle = (2*PI)/ 200;
   int step = jingle.bufferSize() / 200;
   for(int i=0; i < jingle.bufferSize() - step; i+=step) {
    float x =  cos(a) * (40 * jingle.mix.get(i) + 60);
    float y = sin(a) * (40 * jingle.mix.get(i) + 60);
    float x2 = cos(a + angle) * (40 * jingle.mix.get(i+step) + 60);
    float y2 = sin(a + angle) * (40 * jingle.mix.get(i+step) + 60);
    line(x,y,x2,y2);
    a += angle; 
   }
   
 }
 int r,b,a, dr,db;
 color c;
 int rotation;
  
}