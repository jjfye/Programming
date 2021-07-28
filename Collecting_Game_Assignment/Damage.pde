//Damage animation class

class DamageAnimation extends Player {

  PImage img1, img2, img3, img4, img5, img6;

  DamageAnimation(int x, int y) {
    super(x, y);

    img1 = loadImage("explosion1.png");
    //img1.resize(50, 50);
    img2 = loadImage("explosion2.png");
    //img2.resize(50, 50); 
    img3 = loadImage("explosion3.png");
    //img3.resize(50, 50);   
    img4 = loadImage("explosion4.png");
    //img4.resize(50, 50);
    img5 = loadImage("explosion5.png");
   // img5.resize(50, 50);
    img6 = loadImage("explosion6.png");
   // img6.resize(50, 50);
  }

  void render(int x, int y) {
    if (counter < 10) { 
      image(img1, x, y); // 0-9 (10)
    } else if (counter < 20) {  
      image(img2, x, y); // 10-19 (10)
    } else if (counter < 30) { 
      image(img3, x, y); // 20-29 (10)
    } else if (counter < 40) { 
      image(img4, x, y);// 30-39 (10)
    } else if (counter < 50) {  
      image(img5, x, y); // 40-49 (10)
    } else if (counter < 60) { 
      image(img6, x, y); // 50-59 (10)
    } else {
      image(img6, x, y);
      counter = 0;
    }
    counter++;
  }

  boolean crash(Enemy snail) {
    return abs(this.x-snail.x) < 30 && abs(this.y - snail.y-10) < 40;
  }
}
