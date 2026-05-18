class Enemy {

  int ex;
  int ey;

  Enemy() {

    ex = int(random(0, 800));
    ey = int(random(-900, 0));
  }

void move() {

    ey += 1;

    // reset to top
    if (ey > height) {

      ey = -10;
      ex = int(random(0, 800));
    }
  }

  void display() {

    image(Ephoto, ex, ey);
  }
}
