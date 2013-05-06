import java.util.*;


void setup() {
  size(500, 500);  
}

boolean mouseClicked = false;

void draw() {
  background(255);
  
  for(int i = 25; i < 500; i += 25) {
    int pX = mouseX;
    int pY = mouseY;
    line(i, 0, i, 500);
    line(0, i, 500, i);
    //diagonal
    for (int j = 1; j < 500; j+=1) {
      if(pX < 25*j & pY < 25*j & mouseClicked == true) {
        fill(0);
        text("X", pX, pY);
        if (mouseClicked = true) {
          fill(0);
          text("X", pX, pY);
        }
      }
    }
    //everything else
    for (int q = 1; q < 500; q+=1) {
      if(pX < 25*q & pY < 25 & mouseClicked == true) {
        fill(0);
        text("X", pX, pY);
        if (mouseClicked = true) {
          fill(0);
          text("X", pX, pY);
        }
      }
    }
    
  }
  //this is where you place the "X" after checking if the square is still available
  //Then the computer will fill in a free space after you start, t seconds, with an "O"
  //will add, "random near the last placed "X"
  //t will change t = t - t*.05; making the time diminish between moves
  //Check if there is 5 in a row of "O" of "X" 
  
  println(mouseX);
  println(mouseY);
}

void mouseClicked() {
  mouseClicked = true;
}

/**PLEASE NOTE, a lot will probably simplify if instead of "X" and "O" I use colors...say "Red" and "Blue"**/
