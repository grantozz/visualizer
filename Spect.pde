class Spect implements Showable{
  int offset;
 public Spect(){
   offset=700;
 }
 
 void show(){
   colorMode(RGB,255);
   background(0);
  stroke(255);
  
  fft.forward( jingle.mix );
  
  for(int i = 0; i < fft.specSize(); i++)
  {

    float c = map(i,0,fft.specSize(),255,0);
    
     stroke(15,c,200);
    line( i, height-offset,i, height - fft.getBand(i)*8-offset);
    line( -1*i, height-offset,i*-1, height  - fft.getBand(i)*-8-offset); // mirriors to opostie quadrant
     
    }
  }
  
   
   
   
   
  
  
}