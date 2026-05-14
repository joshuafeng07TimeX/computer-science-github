class Bullet {

  int x;
  int y;

  Bullet(int tempX, int tempY) {

    x = tempX;
    y = tempY;
  }

  void update() {

    y -= 10;
  }

  void display() {

    image(Sphoto, x, y);
  }
}
