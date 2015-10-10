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
      level2();  
    break;
    case 2:
      level3();
    break;
    case 3:
      level4();
    break;
    case 4:
      level5();
    break;
    case 5:
      level6();
    break;
    case 6:
      level7();
    break;
    case 7:
      level8();
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
  text("goes to upper level",70,93);
  fill(255,128,128);
  rect(30,110,20,20);
  text("goes to under level",70,123);
  fill(255,215,0);
  rect(30,140,20,20);
  text("goes up/down level",70,153);
  fill(255);
  text("If you hit the wall, you'll be send back to the initial point.",30,556);
  text("W-up",800,50);
  text("S-down",800,75);
  text("A-left",800,100);
  text("D-right",800,125);
  text("R-goes up level",800,150);
  text("F-goes down level",800,175);
}

void maze(){
  fill(255);
  for(int i=0;i<25;i++){
    for(int j=0;j<25;j++){
      rect(310+15*i,100+15*j,15,15);
    }
  }
}

class Player{
  int x = 677-15*24;
  int y = 453-15*22;
  void display(){
    fill(0);
    ellipse(x,y,10,10);
  }
}

void level1(){
  fill(125,233,193);
  for(int i=0;i<3;i++){
    rect(310+15*i,100+15*1,15,15);
  }
  for(int j=1;j<4;j++){
    rect(310+15*2,100+15*j,15,15);
  }
  for(int i=2;i<4;i++){
    rect(310+15*i,100+15*3,15,15);
  }
  for(int j=3;j<11;j++){
    rect(310+15*5,100+15*j,15,15);
  }
  for(int i=5;i<8;i++){
    rect(310+15*i,100+15*5,15,15);
  }
  for(int i=3;i<14;i++){
    rect(310+15*i,100+15*10,15,15);
  }
  for(int i=1;i<4;i++){
    rect(310+15*i,100+15*12,15,15);
  }
  for(int j=10;j<13;j++){
    rect(310+15*3,100+15*j,15,15);
  }
  for(int j=10;j<17;j++){
    rect(310+15*13,100+15*j,15,15);
  }
  for(int i=13;i<19;i++){
    rect(310+15*i,100+15*14,15,15);
  }
  for(int j=6;j<17;j++){
    rect(310+15*18,100+15*j,15,15);
  }
  for(int i=18;i<24;i++){
    rect(310+15*i,100+15*6,15,15);
  }
  for(int i=18;i<24;i++){
    rect(310+15*i,100+15*15,15,15);
  }
  for(int i=9;i<19;i++){
    rect(310+15*i,100+15*16,15,15);
  }
  for(int j=16;j<24;j++){
    rect(310+15*9,100+15*j,15,15);
  }
  for(int j=16;j<24;j++){
    rect(310+15*15,100+15*j,15,15);
  }
  
  fill(255,128,128);
    rect(310+15*3,100+15*3,15,15);
    rect(310+15*5,100+15*3,15,15);
    rect(310+15*5,100+15*7,15,15);
    rect(310+15*7,100+15*5,15,15);
}

void level2(){
  fill(125,233,193);
  for(int j=5;j<8;j++){
    rect(310+15*8,100+15*j,15,15);
  }
  for(int i=5;i<7;i++){
    rect(310+15*i,100+15*7,15,15);
  }
  
  fill(255,215,0);
    rect(310+15*3,100+15*3,15,15);
    rect(310+15*5,100+15*3,15,15);
    rect(310+15*5,100+15*7,15,15);
  fill(21,159,238);
    rect(310+15*7,100+15*5,15,15);
  fill(255,128,128);
    rect(310+15*8,100+15*6,15,15);
}

void level3(){
  fill(125,233,193);
  for(int i=3;i<6;i++){
    rect(310+15*i,100+15*3,15,15);
  }
  for(int i=8;i<17;i++){
    rect(310+15*i,100+15*6,15,15);
  }
  for(int i=6;i<17;i++){
    rect(310+15*i,100+15*13,15,15);
  }
  for(int j=8;j<14;j++){
    rect(310+15*6,100+15*j,15,15);
  }
  for(int j=6;j<14;j++){
    rect(310+15*16,100+15*j,15,15);
  }
    rect(310+15*7,100+15*7,15,15);
  
  
  fill(255,215,0);
    rect(310+15*5,100+15*7,15,15);
  fill(21,159,238);
    rect(310+15*3,100+15*3,15,15);
    rect(310+15*5,100+15*3,15,15);
    rect(310+15*8,100+15*6,15,15);
}

void level4(){
  fill(255,215,0);
    rect(310+15*5,100+15*7,15,15);
}

void level5(){
  fill(125,233,193);
    for(int i=11;i<15;i++){
      rect(310+15*i,100+15*3,15,15);
    }
    for(int i=8;i<12;i++){
      rect(310+15*i,100+15*4,15,15);
    }
    for(int i=14;i<17;i++){
      rect(310+15*i,100+15*4,15,15);
    }
    for(int i=6;i<9;i++){
      rect(310+15*i,100+15*5,15,15);
    }
    for(int i=16;i<18;i++){
      rect(310+15*i,100+15*5,15,15);
    }
    rect(310+15*6,100+15*6,15,15);
    rect(310+15*6,100+15*15,15,15);
    for(int i=6;i<9;i++){
      rect(310+15*i,100+15*16,15,15);
    }
    for(int i=16;i<18;i++){
      rect(310+15*i,100+15*16,15,15);
    }
    for(int i=8;i<12;i++){
      rect(310+15*i,100+15*17,15,15);
    }
    for(int i=14;i<17;i++){
      rect(310+15*i,100+15*17,15,15);
    }
    for(int i=11;i<15;i++){
      rect(310+15*i,100+15*18,15,15);
    }
  
  fill(255,215,0);
      rect(310+15*5,100+15*7,15,15);
  fill(255,128,128);
    for(int j=7;j<16;j++){
      rect(310+15*5,100+15*j,15,15);
    }
      rect(310+15*6,100+15*16,15,15);
  fill(255,215,0);
    rect(310+15*5,100+15*7,15,15);
}

void level6(){
  fill(125,233,193);
    for(int j=7;j<17;j++){
      rect(310+15*5,100+15*j,15,15);
    }
    for(int j=7;j<17;j++){
      rect(310+15*19,100+15*j,15,15);
    }
    for(int j=16;j<18;j++){
      rect(310+15*6,100+15*j,15,15);
    }
    for(int j=16;j<18;j++){
      rect(310+15*18,100+15*j,15,15);
    }
    for(int j=17;j<19;j++){
      rect(310+15*7,100+15*j,15,15);
    }
    for(int j=17;j<19;j++){
      rect(310+15*17,100+15*j,15,15);
    }
    for(int i=8;i<10;i++){
      rect(310+15*i,100+15*18,15,15);
    }
    for(int i=15;i<17;i++){
      rect(310+15*i,100+15*18,15,15);
    }
    for(int i=9;i<16;i++){
      rect(310+15*i,100+15*19,15,15);
    }
  
  fill(21,159,238);
    for(int j=7;j<16;j++){
      rect(310+15*5,100+15*j,15,15);
    }
      rect(310+15*6,100+15*16,15,15);
  fill(255,215,0);
      rect(310+15*5,100+15*7,15,15);
  fill(255,128,128);
      rect(310+15*8,100+15*18,15,15);
      rect(310+15*17,100+15*17,15,15);
      rect(310+15*18,100+15*17,15,15);
}

void level7(){
  fill(125,233,193);
    for(int i=8;i<11;i++){
      rect(310+15*i,100+15*4,15,15);
    }
    for(int j=5;j<10;j++){
      rect(310+15*10,100+15*j,15,15);
    }
    for(int i=11;i<14;i++){
      rect(310+15*i,100+15*9,15,15);
    }
      rect(310+15*5,100+15*7,15,15);
      rect(310+15*13,100+15*10,15,15);
    for(int i=12;i<15;i++){
      rect(310+15*i,100+15*11,15,15);
    }
    for(int j=12;j<14;j++){
      rect(310+15*12,100+15*j,15,15);
    }
    for(int j=12;j<14;j++){
      rect(310+15*14,100+15*j,15,15);
    }
    for(int j=13;j<15;j++){
      rect(310+15*11,100+15*j,15,15);
    }
    for(int j=13;j<15;j++){
      rect(310+15*15,100+15*j,15,15);
    }
    for(int j=14;j<18;j++){
      rect(310+15*10,100+15*j,15,15);
    }
    for(int j=14;j<18;j++){
      rect(310+15*16,100+15*j,15,15);
    }
    for(int j=16;j<18;j++){
      rect(310+15*9,100+15*j,15,15);
    }
    for(int j=16;j<18;j++){
      rect(310+15*17,100+15*j,15,15);
    }
    for(int j=17;j<20;j++){
      rect(310+15*8,100+15*j,15,15);
    }
    for(int j=17;j<20;j++){
      rect(310+15*18,100+15*j,15,15);
    }
    for(int j=19;j<21;j++){
      rect(310+15*7,100+15*j,15,15);
    }
    for(int j=19;j<21;j++){
      rect(310+15*19,100+15*j,15,15);
    }
    for(int j=20;j<23;j++){
      rect(310+15*6,100+15*j,15,15);
    }
    for(int j=20;j<23;j++){
      rect(310+15*20,100+15*j,15,15);
    }
    for(int i=11;i<16;i++){
      rect(310+15*i,100+15*17,15,15);
    }
    
  fill(21,159,238);
    rect(310+15*5,100+15*7,15,15);
    rect(310+15*8,100+15*18,15,15);
    rect(310+15*17,100+15*17,15,15);
    rect(310+15*18,100+15*17,15,15);
}

void level8(){
  fill()
}

void level23(){
  fill(125,233,193);
  for(int i=12;i<23;i++){
    rect(310+15*i,100+15*6,15,15);
  }
  for(int i=12;i<23;i++){
    rect(310+15*i,100+15*14,15,15);
  }
  for(int i=12;i<25;i++){
    rect(310+15*i,100+15*23,15,15);
  }
  for(int j=7;j<14;j++){
    rect(310+15*12,100+15*j,15,15);
  }
  for(int j=14;j<23;j++){
    rect(310+15*22,100+15*j,15,15);
  }
  
  fill(21,159,238);
    rect(310+15*13,100+15*6,15,15);
    rect(310+15*22,100+15*18,15,15);
    rect(310+15*13,100+15*14,15,15);
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
    state--;
  }
  if (keyCode == 'F'){
    state++;
  }
}
