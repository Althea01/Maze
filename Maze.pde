int state = 0;
void setup(){
  size(1000,600);
}

void draw(){
  background(0);
  switch (state)
  {
    case 0:
      level1;
    break;
    case 1:
      endgame;  
    break;
    case 2:
      win();
    break;
    default:
      println("nothing at all");
    break;
  }
}

void instruction(){
  fill(125,233,193);
  rect(20,20,5,5);
}
void level1(){
  
}

void endgame(){
  
}

void win(){
  
}
