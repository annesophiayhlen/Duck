MyDuck d;
MyPaddle p;
//Left and right keys
boolean left, right;
//restart
boolean reStart = false;

void setup() {
  size(800, 1000); //800, 1000 org.
  d = new MyDuck(3, 4, 500, 500);
  p = new MyPaddle(width/2, height-25, 100, 25, 5);
}
void draw() {
  background(#70FCA9);
  p.display();
  p.move();
  d.display();
  d.duckMove();
  d.bounce();
  gameOver();
}

void keyPressed() { // moves when key is pressed 
  if (keyCode == RIGHT) {
    right = true;
  }  
  if (keyCode == LEFT) {
    left = true;
  }
}

void keyReleased() { // stops when key is released
  if (keyCode == RIGHT) {
    right = false;
  }  
  if (keyCode == LEFT) {
    left = false;
  }
}

void gameOver() {
  //GAMER OVER TEXT 
  if (d.newY > height + d.sizeE/2) {
    fill(255, 0, 0);
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/3);
    //RESTART button
    fill(255, 255, 255); 
    if (dist(mouseX, mouseY, 400, 400) < 50) { // detection for restart button
      fill(255, 0, 0);  
      reStart = true;
    }
     ellipse(400,400,100,100); //draw restart ellipse 
   //RESTART TEXT
   fill(0);
   textSize(20);
   text("RESTART",400,400);
  }
}
