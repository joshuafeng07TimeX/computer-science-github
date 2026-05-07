// VARIABLES 
int lifes = 3; 
boolean Gameover = false;
//SETUP
void setup(){ 
  size(800,800);
}

void draw(){ 

  // GAME OVER SCREEN
  if (Gameover) { 
    background(0); 
    fill(255); 
    textSize(50); 
    text("GAME OVER", 250, 400); 
    text("press 'r' to reset", 234, 450);
    text ("score = " + score, 245, 500);
    return; 
  } 
