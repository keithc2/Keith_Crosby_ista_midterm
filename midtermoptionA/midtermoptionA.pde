int player2 = 0;
int player1 = 0;
int h = 500;
int w = 500;
int seconds = 0;
int averagep1 = 0;
int averagep2 = 0;

void setup() {
  size(h, w);
}

void draw() {
  background(0);
  fill(255,0,0);
  quad(-player2,-player2, -player2,player2, player2,-player2, player2,player2);
  fill(0,0,255);
  quad(-player1,-player1, player1,-player1, -player1,player1, player1,player1);
  if (player2 >= h) {
    println("RED WINS");
    background(255,0,0);
    player1 = 0;
    fill(255);
    textSize(h*.16);
    seconds = millis()/1000;
    averagep2 = player2/seconds;
    text("RED WINS!", 0, h/2);
    text(averagep2, 0, h/2 + w/4);
  }
  if (player1 >= w) {
    println("BLUE WINS");
    background(0,0,255);
    player2 = 0;
    fill(255);
    textSize(w*.16);
    seconds = millis()/1000;
    averagep1 = player1/seconds;
    text("BLUE WINS!", 0, h/2);
    text(averagep1, 0, h/2 + w/4);
  }
}

void mouseClicked() {
  //RED
  player2 = player2 + w/50;
}

void keyReleased() {
  //BLUE
  player1 = player1 + w/50;
}


//Still need to show instant replay
