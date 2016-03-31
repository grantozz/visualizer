class Psphere{
  
 public Psphere(int radius){
   this.radius=radius;
   
  }
 
 void show(){
       background(0);
  
  stroke( 255 );
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
   
 }
  
 private int radius; 
}