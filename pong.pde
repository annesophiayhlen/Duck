class MyPaddle {
  float x;
  float y;
  float _width;
  float _height;
  float speed;


  MyPaddle(float _x, float _y, float w, float h, float s) {
    x = _x;
    y = _y;
    _width = w;
    _height = h;
    speed = s;
  }
  void move() {
    //rect movement
    if (right) {
      x += speed;
    }
    if (left) {
      x -= speed;
    }
  }

    void display() {
      //Rect setup
      stroke(1);
      fill(255, 0, 0);
      rect(x, y, _width, _height);
    }
  }




  /* 
   //Ellipse:
   float xE = 400; //start value 
   float yE = 400;
   float widthE = 50;
   float heightE = 50;
   float xESpeed = -5;
   float yESpeed = -5.5;
   
   //Rect:
   float xR = 350;
   float yR = 775;
   float widthR = 100;
   float heightR = 25;
   float xRSpeed = 5;
   
   
   //Left and right keys
   boolean left, right;
   
   //restart
   boolean reStart = false;
   
   //Score
   int score = 0;
   
   }
   
   //Ellipse setup
   fill(255,0,0);
   stroke(0);
   ellipse(xE,yE,widthE,heightE);
   
   //Rect setup
   fill(255,0,0);
   stroke(0);
   rect(xR,yR,widthR,heightR);
   
   //Scoreboard
   textSize(50);
   textAlign(CENTER);
   text(score, 50, 70); 
   fill(0, 102, 153);
   
   //Ball Moving
   xE = xE + xESpeed;
   yE = yE + yESpeed;
   
   //ball collision on sides/bounce back
   if((xE > width - widthE/2) || (xE < widthE/2)){
   xESpeed = -xESpeed;
   }
   if(yE < heightE/2){
   yESpeed = -yESpeed;
   }
   
   //rect collision on sides
   if(xR > width - widthR){
   xR = width - widthR;
   }  
   if(xR < 0){
   xR = 0;
   } 
   
   //rect movement
   if(right){
   xR = xR + xRSpeed;
   }
   if(left){
   xR = xR - xRSpeed; 
   }
   //Collision/bounce off from rect
   if(xE + (widthE/2) > xR && xE < xR + widthR && yE + (heightE/2) > yR && yE < yR + heightR){
   yESpeed *= -1;
   score++;
   
   if(dist(xE + (widthE/2),yE + (heightE/2), xR, yR) < xR){ //Left side bounce of the paddel
   xESpeed = -xESpeed; 
   }
   //if(dist(xE + (widthE/2),yE + (heightE/2), xR + widthR , yR) < xR + widthR){  <-- doesnt work :/ 
   //xESpeed = -xESpeed; 
   //}
   }
   //GAMER OVER TEXT 
   if(yE > height + heightE/2){
   fill(255,0,0);
   textSize(100);
   textAlign(CENTER);
   text("GAME OVER", width/2, height/3);
   //RESTART button
   fill(255,255,255); 
   if(dist(mouseX, mouseY, 400,400) < 50){ // detection for restart button
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
   
   void restartGame(){ // my start setup in a funktion to make Restart game
   //Ellipse
   xE = 400;
   yE = 400;
   xESpeed = 5;
   yESpeed = -5.5;
   widthE = 50;
   heightE = 50;
   
   //Rect
   xR = 350;
   yR = 775;
   xRSpeed = 5;
   widthR = 100;
   heightR = 25;
   score = 0;
   }
   
   void keyPressed(){ // moves when key is pressed 
   if(keyCode == RIGHT){
   right = true;
   }  
   if(keyCode == LEFT){
   left = true;
   } 
   }
   
   void keyReleased(){ // stops when key is released
   if(keyCode == RIGHT){
   right = false;
   }  
   if(keyCode == LEFT){
   left = false;
   } 
   }
   //Restart
   void mouseClicked(){ //restting all settings to start/deafault
   if(reStart == true){
   restartGame();
   reStart = false;
   }
   }
   */
