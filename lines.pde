class Lines implements Showable{
  float max;
  int index;

  public Lines(){
  max =0;
  index=0;
  }
  
  public void show(){
     colorMode(RGB,255);
     background(0);
    stroke(255);
 
    for(int i = 0; i < jingle.bufferSize() - 1; i++)
    {
      int offset=350;
      int a=(int)map(abs(jingle.mix.get(i)*1000.0),0.0,300.0,20.0,255.0);
    
      //stroke(wheel((int)abs(jingle.mix.get(i)*1000)),a));
      stroke(color(255,0,255),a);
      strokeWeight(2);
      float x1 = map( i, 0, jingle.bufferSize(), 0, width );
      float x2 = map( i+1, 0, jingle.bufferSize(), 0, width );
      //line( x1, jingle.mix.get(i)*50, x2, 50 + jingle.mix.get(i+1)*50 );
      //line( x1, jingle.right.get(i)*50, x2, 150 + jingle.right.get(i+1)*50 );
      line( x1-width/2, height/2+jingle.mix.get(i)*height/2-offset, x1-width/2, height/2- jingle.mix.get(i)*height/2-offset );
    }
  }
 
 
 color wheel(int WheelPos){
 if(WheelPos>-1){
 WheelPos = 255 - WheelPos;
  if(WheelPos < 85) {
    return color(255 - WheelPos * 3, 0, WheelPos * 3);
  }
  if(WheelPos < 170) {
    WheelPos -= 85;
    return color(0, WheelPos * 3, 255 - WheelPos * 3);
  }
  WheelPos -= 170;
  return color(WheelPos * 3, 255 - WheelPos * 3, 0);
 }
 else {
   return 0;
 }
}


}