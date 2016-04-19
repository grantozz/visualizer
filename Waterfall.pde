class Waterfall implements Showable{
  
 public Waterfall(){
   
   
   
   
 }
 
 void show(){
    colorMode(RGB,255);
    background(0);
    
    
    // draw the waveforms
    // the values returned by left.get() and right.get() will be between -1 and 1,
    // so we need to scale them up to see the waveform
    // note that if the file is MONO, left.get() and right.get() will return the same value
 
    for(int i = 0; i < jingle.bufferSize() - 1; i++)
    {
      int offset=350;
      
      
      strokeWeight(2);
      float x1 = map( i, 0, jingle.bufferSize(), 0, width );
      float x2 = map( i+1, 0, jingle.bufferSize(), 0, width );
      //line( x1, jingle.mix.get(i)*50, x2, 50 + jingle.mix.get(i+1)*50 );
      //line( x1, jingle.right.get(i)*50, x2, 150 + jingle.right.get(i+1)*50 );
      for(int z=100;z>=0;z--){
        int c=(int)map(z,100,0,0,255);
        
        stroke(c,0,255,z);
        line( x1-width/2, height/2+jingle.mix.get(i)*height/2-offset,z, x1-width/2, height/2- jingle.mix.get(i)*height/2-offset,z );
      }
    }
   
 }
  
  
}