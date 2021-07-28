//Enemy Class

class Enemy {
  int x;
  int y;
  int counter = 0;
  
  PImage snail0, snail1, snail2, snail3;
  
  //constructor
  Enemy(int x, int y) {
    this.x = x;
    this.y = y;

    snail0 = loadImage("snail0.png");
    snail0.resize(150, 150);
    snail1 = loadImage("snail1.png");
    snail1.resize(150, 150);  
    snail2 = loadImage("snail2.png");
    snail2.resize(150, 150);   
    snail3 = loadImage("snail3.png");
    snail3.resize(150, 150);
  }

  void update() {
    move();
    render();
  }

  void move() {
    x -= random(2);
  }

  void render() {
    if (counter < 10) { 
      image(snail0, x, y); // 0-9 (10)
    } else if (counter < 20) {  
      image(snail1, x, y); // 10-19 (10)
    } else if (counter < 30) { 
      image(snail2, x, y); // 20-29 (10)
    } else if (counter < 39) { 
      image(snail3, x, y); // 30-39 (10)
    } else { 
      image(snail3, x, y); // 39 (1)
      counter=0;
    }

    counter++;
  }
}
