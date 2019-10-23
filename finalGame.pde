MyDuck d;


void setup(){
  size(800,1000);
  d = new MyDuck(3,4,500,500);
}
void draw(){
background(#70FCA9);
d.display();
d.duckMove();
d.bounce();

}
