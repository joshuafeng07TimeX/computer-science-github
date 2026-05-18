class Bullet {

  int bx;
  int by;

  Bullet(int tempX, int tempY) {

    bx = tempX;
    by = tempY;
  }

  void update() {

    by -= 10;
  }

  void display() {

    image(Sphoto, bx, by);
  }
}
