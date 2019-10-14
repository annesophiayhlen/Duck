class MyDuck {
  int newX;
  int newY;
  float newW;
  int size;
  
 MyDuck(int duckSize, int duckX, int duckY){
  size = duckSize;


 }
 
void duckPos(int duckX, int duckY){
  
newX = -35* size + duckX;
newY = -25* size + duckY;   
 }
 
void display(){
  
  newW = 1;
  noStroke();
      //body color
  fill(250,237,92); 
    beginShape();
    curveVertex(newX + 220* size, newY + 160* size);//thick side L
    curveVertex(newX + 25* size,  newY + 37* size);//bottom L
    curveVertex(newX + 45* size,  newY + 17* size);//top
    curveVertex(newX + 45* size,  newY + 37* size);//bottom R
    curveVertex(newX + 45* size,  newY + 20* size);//thick side R
    endShape();
    
  //head color
  fill(250,237,92);
   beginShape();
   curveVertex(newX + 85* size, newY + 75* size);//thick side L
   curveVertex(newX + 35* size, newY + 18* size);// bottom L
   curveVertex(newX + 40* size, newY + 3* size);// top
   curveVertex(newX + 46* size, newY + 18* size);//bottom R
   curveVertex(newX + 1* size, newY + 85* size);//thick side R
   endShape();
   
  //tail color
  fill(250,237,92);
   beginShape();
   curveVertex(newX + 60* size, newY + 50* size);//thick side L
   curveVertex(newX + 24* size, newY + 35* size);//bottom L
   curveVertex(newX + 15* size, newY + 16* size);//top
   curveVertex(newX + 25* size, newY + 18* size);//bottom R
   curveVertex(newX + 60* size, newY + 10* size);//thick side R
   endShape();
    
  //Head - Beak   
  fill(245,182,47);
  arc(newX + 48* size, newY + 10* size, newW * 7* size, newW * 3* size, -PI / 2, PI / 2);
  
  // Head - upper half of circle  
  fill(250,237,92);
  arc(newX + 40* size, newY + 10* size, newW * 15* size, newW * 15* size,-PI, 0);  
  
  //Head - front neck
  curve(newX + 42* size, newY + 1* size, newX + 47* size, newY + 10* size, newX + 45* size, newY + 17* size, newX + 40* size, newY + 17* size);
  
  //Head- Back neck 
  curve(newX + 38* size, newY + 1* size, newX + 33* size, newY + 10* size,newX + 35* size, newY + 18* size, newX + 35* size, newY + 10* size); 
  
  //Body - front on duck 
  arc(newX + 45* size, newY + 27* size, newW * 15* size, newW * 20* size, -PI / 2, PI / 2);
   
  //Body - Bottom   
  line(newX + 45* size, newY + 37* size, newX + 25* size, newY + 37* size); 
  
  //Body - lower tail  
  curve(newX + 40* size, newY + 5* size, newX + 15* size, newY + 15* size, newX + 25* size, newY + 37* size, newX + 60* size, newY + 20* size);
  
  //Head - eye
  fill(0);
  ellipse( newX + 43* size, newY + 8* size, newW * 3* size, newW * 4* size);
  
  //Head - eyelight
  strokeWeight(1);
  fill(255);
  circle(newX + 44* size, newY + 7* size, newW * 1* size);
  
  //Body - wing
  noFill();
  stroke(1); 
  strokeWeight(1* size/2);  
  curve(newX + 20* size, newY + 40* size, newX + 25* size, newY + 25* size, newX + 40* size, newY + 22* size, newX + 30* size, newY + 40* size); //Upper wing 
  curve(newX + 40* size, newY + 10* size, newX + 25* size, newY + 25* size, newX + 40* size, newY + 30* size, newX + 40* size, newY + 10* size); //Lower wing
  curve(newX + 15* size, newY + 40* size, newX + 30* size, newY + 25* size, newX + 40* size, newY + 25* size, newX + 40* size, newY + 40* size); //Upper pattern
  curve(newX + 15* size, newY + 15* size, newX + 30* size, newY + 27* size, newX + 40* size, newY + 27* size, newX + 40* size, newY + 15* size); //Lower pattern
  noStroke();
  
  //Body - back and uppertail   
  line(newX + 35* size, newY + 17* size, newX + 27* size, newY + 18* size); 
  curve(newX + 12* size, newY + 0* size, newX + 15* size, newY + 15* size, newX + 30* size, newY + 17* size, newX + 30* size, newY + 10* size);
  }
}
