int state = 0;
Player player;
void setup(){
  size(1000,600);
  player = new Player();
}

void draw(){
  background(0);
  instruction();
  maze();
  switch (state)
  {
    case 0:
      level1();
    break;
    case 1:
      println("hhh");  
    break;
    case 2:
      win();
    break;
    default:
      println("nothing at all");
    break;
  }
  player.display();
}

void instruction(){
  fill(255);
  text("Colored boxes mean that there is a path.",30,30);
  fill(125,233,193);
  rect(30,50,20,20);
  text("normal path",70,63);
  fill(21,159,238);
  rect(30,80,20,20);
  text("goes up",70,93);
  fill(255,128,128);
  rect(30,110,20,20);
  text("goes down",70,123);
  fill(255);
  text("If you hit the wall, you'll be send back to the initial point.",30,556);
}

void maze(){
  fill(255);
  for(int i=0;i<26;i++){
    for(int j=0;j<26;j++){
      rect(300+15*i,100+15*j,15,15);
    }
  }
}

class Player{
  int x = 683;
  int y = 468;
  void display(){
    fill(0);
    ellipse(x,y,10,10);
  }
}
void level1(){
  fill(125,233,193);
  for(int i=13;i<24;i++){
    rect(300+15*i,100+15*7,15,15);
  }
  for(int i=13;i<24;i++){
    rect(300+15*i,100+15*15,15,15);
  }
  for(int i=13;i<26;i++){
    rect(300+15*i,100+15*24,15,15);
  }
  for(int j=8;j<15;j++){
    rect(300+15*13,100+15*j,15,15);
  }
  for(int j=15;j<24;j++){
    rect(300+15*23,100+15*j,15,15);
  }
  println("level1");
}

void win(){
  println("win");
}

void keyPressed(){
  if (keyCode == 'W'){
    player.y-=15;
  }
  if (keyCode == 'S'){
    player.y+=15;
  }
  if (keyCode == 'A'){
    player.x-=15;
  }
  if (keyCode == 'D'){
    player.x+=15;
  }
  if (keyCode == 'R'){
    state++;
  }
  if (keyCode == 'F'){
    state--;
  }
}
