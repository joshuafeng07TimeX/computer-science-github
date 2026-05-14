ArrayList<Bullet> bullets = new ArrayList<Bullet>();
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

void setup() {
  pixelDensity(2);
  frameRate(120);
  size(900,900, P2D);

  Pphoto = loadImage("Player.png");
  Ephoto = loadImage("enemies.png");
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
  
 // Bullets
  for (int i = bullets.size()-1; i >= 0; i--) {

    Bullet b = bullets.get(i);

    b.update();
    b.display();

    // remove off screen bullets
    if (b.y < -50) {
      bullets.remove(i);
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

      bullets.add(new Bullet(playerX + 65, 735));
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
