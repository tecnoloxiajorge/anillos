int tiempo;
int time=10;
int X=200,Y=200;
float posX=random(30,370);
float posY=random(30,370);

void setup(){
  size(400,400);
  rectMode(CENTER);
}


void draw() {
  background(255);
  tiempo=time-millis()/1000;
  fill(0);
  noStroke();
  textSize(20);
  text(tiempo,posX-5,posY+5);
  rect(X,Y,40,40);
  noFill();
  stroke(0);
  rect(posX,posY,60,60);
  
  
  if(dist(X,Y,posX,posY)<10){
    posX=random(30,370);
    posY=random(30,370);
    time=time+(10-tiempo);
    
}}
void keyPressed() {
  if(key=='a') {X=X-5;}
  if(key=='d') {X=X+5;}
  if(key=='w') {Y=Y-5;}
  if(key=='s') {Y=Y+5;}
}