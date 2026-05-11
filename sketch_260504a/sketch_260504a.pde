// VARIABLES 
int lifes = 3; 
boolean Gameover = false;

PImage Pphoto; // Player photo
PImage Ephoto; // Enemy photo
PImage Bphoto; // Background photo
PImage Sphoto; //Bullets photo
int playerX = 375;
int playXV = 0;
int bulletX;
int bulletY;

// bullet state
boolean shooting = false;
void setup() {
  frameRate(120);
  size(900,900, P2D);

  Pphoto = loadImage("Player.png");
  Ephoto = loadImage("enemies.jpg");
  Bphoto = loadImage("Background.jpg");
  Sphoto = loadImage("bullets.png");

  Bphoto.resize(900,900);
  Ephoto.resize(100,100);
  Pphoto.resize(140,140);
  Sphoto.resize(10,10);
}

void draw(){ 
 
  // Background
  image(Bphoto,0,0);
  image(Ephoto,100,100);
  image(Pphoto,playerX,720);
  
  //PlayerXV
  playerX += playXV;
  playerX = constrain(playerX, 0, width - 140);
  
  //Bullets shooting
  if (shooting) {

    image(Sphoto, bulletX, bulletY);

    bulletY -= 10;

  if (bulletY < 0) {
    shooting = false;
    }
  }
  
  // GAME OVER SCREEN
  if (Gameover) { 
    background(0); 
    fill(255); 
    textSize(50); 
    text("GAME OVER", 250, 400); 
    text("press 'r' to reset", 234, 450);

    return; 
  } 
}

void keyPressed(){
    if (key == 'a') {
      playXV = -5;
    }

    // move right
    if (key == 'd') {
      playXV = 5;
    }
   if (key == ' ') {

    // start bullet at player
    bulletX = playerX + 65;
    bulletY = 720;

    shooting = true;
  }
  }
void keyReleased(){
  if (key == 'a') {
      playXV = 0;
    }

    // move right
    if (key == 'd') {
      playXV = 0;
    }
}
