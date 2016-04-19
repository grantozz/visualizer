class BoxSpiral implements Showable { //add inheritance from spiral
  int scale=10;
  int size=0;
  float speed=0.0000001;
  int offset=200;
  color c=0;
  int i=0;

   public  BoxSpiral(){
     size=20;
     
   }
   
   
   void show(){
     

   beat.detect(jingle.mix);  
   //may induce seizures
   //if(beat.isOnset()){c=color(i%size,15,20);} else{c=color(0);}
   
   
   //if(beat.isOnset()){speed*=-1;}
   colorMode(HSB,size);
   background(c);
 
   for(int x=0; x<size;x++){
     for(int y=0;y<size;y++){
       for(int z=0;z<size;z++){
         noFill();
         stroke(x,y,z);
         
         box(x*scale,y*scale,z*scale-offset);            
          rotateZ(millis()*speed);
          rotateY(millis()*speed/2);
          rotateX(millis()*speed/6);

       }
     }
   }
     i+=1;
   }




}