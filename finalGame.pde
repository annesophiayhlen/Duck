MyDuck duck;
MyPaddle paddle;

boolean left, right; //Left and right keys
boolean reStart = false; //restart
int score = 0; //Score

void setup() {
  size(800, 1000); //800, 1000 org.
  duck = new MyDuck(3, 1, random(40,width-70), height/2);
  paddle = new MyPaddle(width/2, height-25, 100, 25, 5);
}
void draw() {
  background(#70FCA9);
  score(#C333FC);
  paddle.display();
  paddle.move();
  paddle.collision();
  paddle.sideCollision();
  duck.display();
  duck.duckMove();
  duck.bounce();
  
  gameOver(#D346D1, #F0DAEF, #55EDFF, #FC33E5 ); // gameover text, restart button, restart button 2nd color, restar text
  
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

void gameOver(color gameText, color restartButton, color restartButtonSec, color restartText) {
  //GAMER OVER TEXT 
  if (duck.newY > height + duck.sizeE/2) {
    fill(int(gameText));
    textSize(100);
    textAlign(CENTER);
    text("GAME OVER", width/2, height/3);
    //RESTART button
    fill(int(restartButton)); 
    if (dist(mouseX, mouseY, width/2, height/2) < 50) { // detection for restart button
      fill(int(restartButtonSec));
      reStart = true;
    }
    ellipse(width/2, height/2, 100, 100); //draw restart ellipse 
    //RESTART TEXT
    fill(int(restartText));
    textSize(19);
    text("RESTART", width/2, height/2);
  }
}
void score(color scoreText) {
   //Scoreboard
 fill(int(scoreText));
 textSize(50);
 textAlign(CENTER);
 text(score, 50, 70); 

}
