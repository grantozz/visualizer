class Psphere implements Showable{
float r=0.01;
 public Psphere(int radius){
   this.radius=radius;
   
  }
  
  
 
 void show(){
   colorMode(RGB,255);
       background(0);
    
  
  stroke(255);
   for(int lat = -90; lat < 90; lat++)
  {
  for(int lng = -180; lng < 180; lng++)
  {
    float _lat = radians(lat);  
    float _lng = radians(lng);  

    float x = radius * cos(_lat) * cos(_lng);
    float y = radius * sin(_lat) * (-1);
    float z = radius * cos(_lat) * sin(_lng);

    point(x, y, z);
  }
 }
  r+=0.01;
 }
 private int radius; 
}