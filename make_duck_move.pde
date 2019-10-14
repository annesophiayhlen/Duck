MyDuck d;

void setup(){
  size(1000,1000);
  d = new MyDuck(5,mouseX,mouseY);
}
void draw(){
background(255);
d.display();
d.duckPos(width/2,height/2);

}
