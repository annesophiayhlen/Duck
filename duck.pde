
class MyDuck {
  float newX; //duck's start pos x
  float newY; //duck's start pos y
  float newW; //duck's width 
  float yDirc = -1; // y direction
  float xDirc = -1; // x direction'
  float speed;  // speed of the duck
  float size; // size of the duck
  int sizeE = 130; //ellipse size

  MyDuck(float duckSize, float speed, float duckX, float duckY) { 
    this.speed = speed;
    size = duckSize;
    newX = -35* size + duckX; // 395
    newY = -22* size + duckY; // 264
  }

  void duckMove() {
    newX = newX + (speed * xDirc);
    newY = newY + (speed * yDirc);
  }

  void bounce() {
    if (newX + 43 <= 0 || newX + 165 >= width) xDirc = xDirc*-1;
    if (newY + 2 <= 0) yDirc = yDirc*-1;
  }
  
  void display() {  
    noStroke();
    newW = 1;
    fill(0, 20);
    ellipse(newX+35*size, newY+22*size, sizeE, sizeE); // 395,264,130,130
    
    noStroke();
    //body color
    fill(250, 237, 92); 
    beginShape();
    curveVertex(newX + 220* size, newY + 160* size);//thick side L
    curveVertex(newX + 25* size, newY + 37* size);//bottom L
    curveVertex(newX + 45* size, newY + 17* size);//top
    curveVertex(newX + 45* size, newY + 37* size);//bottom R
    curveVertex(newX + 45* size, newY + 20* size);//thick side R
    endShape();

    //head color
    fill(250, 237, 92);
    beginShape();
    curveVertex(newX + 85* size, newY + 75* size);//thick side L
    curveVertex(newX + 35* size, newY + 18* size);// bottom L
    curveVertex(newX + 40* size, newY + 3* size);// top
    curveVertex(newX + 46* size, newY + 18* size);//bottom R
    curveVertex(newX + 1* size, newY + 85* size);//thick side R
    endShape();

    //tail color
    fill(250, 237, 92);
    beginShape();
    curveVertex(newX + 60* size, newY + 50* size);//thick side L
    curveVertex(newX + 24* size, newY + 35* size);//bottom L
    curveVertex(newX + 15* size, newY + 16* size);//top
    curveVertex(newX + 25* size, newY + 18* size);//bottom R
    curveVertex(newX + 60* size, newY + 10* size);//thick side R
    endShape();

    //Head - Beak   
    fill(245, 182, 47);
    arc(newX + 48* size, newY + 10* size, newW * 7* size, newW * 3* size, -PI / 2, PI / 2);

    // Head - upper half of circle  
    fill(250, 237, 92);
    arc(newX + 40* size, newY + 10* size, newW * 15* size, newW * 15* size, -PI, 0);  

    //Head - front neck
    curve(newX + 42* size, newY + 1* size, newX + 47* size, newY + 10* size, newX + 45* size, newY + 17* size, newX + 40* size, newY + 17* size);

    //Head- Back neck 
    curve(newX + 38* size, newY + 1* size, newX + 33* size, newY + 10* size, newX + 35* size, newY + 18* size, newX + 35* size, newY + 10* size); 

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
