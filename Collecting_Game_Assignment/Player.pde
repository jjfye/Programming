//Player Class

class Player {
  int x;
  int y;
  int counter = 0;

  PImage idle; //standing still
  PImage img1, img2, img3, img4, img5, img6, img7; //move down
  PImage imgLeft1, imgLeft2, imgLeft3, imgLeft4, imgLeft5, imgLeft6, imgLeft7; //move left
  PImage imgRight1, imgRight2, imgRight3, imgRight4, imgRight5, imgRight6, imgRight7; //move right
  PImage imgUP1, imgUP2, imgUP3, imgUP4, imgUP5, imgUP6; //move up


  // constructor 
  Player(int x, int y) {
    this.x = x;
    this.y = y;

    //standing still
    idle= loadImage("linkStanding1.png");
    idle.resize(80, 80);

    //walking down
    img1 = loadImage("linkdown1.png");
    img1.resize(80, 80);
    img2 = loadImage("linkdown2.png");
    img2.resize(80, 80);  
    img3 = loadImage("linkdown3.png");
    img3.resize(80, 80);   
    img4 = loadImage("linkdown4.png");
    img4.resize(80, 80);   
    img5 = loadImage("linkdown5.png");
    img5.resize(80, 80);
    img6 = loadImage("linkdown6.png");
    img6.resize(80, 80);
    img7 = loadImage("linkdown7.png");
    img7.resize(80, 80);

    //walking left
    imgLeft1 = loadImage("linkleft1.png");
    imgLeft1.resize(80, 80);
    imgLeft2 = loadImage("linkleft2.png");
    imgLeft2.resize(80, 80);
    imgLeft3 = loadImage("linkleft3.png");
    imgLeft3.resize(80, 80);
    imgLeft4 = loadImage("linkleft4.png");
    imgLeft4.resize(80, 80);
    imgLeft5 = loadImage("linkleft5.png");
    imgLeft5.resize(80, 80);
    imgLeft6 = loadImage("linkleft6.png");
    imgLeft6.resize(80, 80);
    imgLeft7 = loadImage("linkleft7.png");
    imgLeft7.resize(80, 80);

    //walking right
    imgRight1 = loadImage("linkright1.png");
    imgRight1.resize(80, 80);
    imgRight2 = loadImage("linkright2.png");
    imgRight2.resize(80, 80);
    imgRight3 = loadImage("linkright3.png");
    imgRight3.resize(80, 80);
    imgRight4 = loadImage("linkright4.png");
    imgRight4.resize(80, 80);
    imgRight5 = loadImage("linkright5.png");
    imgRight5.resize(80, 80);
    imgRight6 = loadImage("linkright6.png");
    imgRight6.resize(80, 80);
    imgRight7 = loadImage("linkright7.png");
    imgRight7.resize(80, 80);

    //walking UP
    imgUP1 = loadImage("linkup1.png");
    imgUP1.resize(80, 80);
    imgUP2 = loadImage("linkup2.png");
    imgUP2.resize(80, 80);
    imgUP3 = loadImage("linkup3.png");
    imgUP3.resize(80, 80);
    imgUP4 = loadImage("linkup4.png");
    imgUP4.resize(80, 80);
    imgUP5 = loadImage("linkup5.png");
    imgUP5.resize(80, 80);
    imgUP6 = loadImage("linkup6.png");
    imgUP6.resize(80, 80);
  }

  // render standing still
  void renderIdle() {
    image(idle, x, y);
  }

  // render moving down
  void renderDown() {
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
    } else if (counter < 69) { 
      image(img7, x, y); // 60-68 (9)
    } else { 
      image(img7, x, y); // 69 (1)
      counter=0;
    }

    counter++;
  }

  // render moving left
  void renderLeft() {
    if (counter < 10) { 
      image(imgLeft1, x, y); // 0-9 (10)
    } else if (counter < 20) {  
      image(imgLeft2, x, y); // 10-19 (10)
    } else if (counter < 30) { 
      image(imgLeft3, x, y); // 20-29 (10)
    } else if (counter < 40) { 
      image(imgLeft4, x, y);// 30-39 (10)
    } else if (counter < 50) {  
      image(imgLeft5, x, y); // 40-49 (10)
    } else if (counter < 60) { 
      image(imgLeft6, x, y); // 50-59 (10)
    } else if (counter < 69) { 
      image(imgLeft7, x, y); // 60-68 (9)
    } else { 
      image(imgLeft7, x, y); // 69 (1)
      counter=0;
    }

    counter++;
  }

  // render moving right
  void renderRight() {
    if (counter < 10) { 
      image(imgRight1, x, y); // 0-9 (10)
    } else if (counter < 20) {  
      image(imgRight2, x, y); // 10-19 (10)
    } else if (counter < 30) { 
      image(imgRight3, x, y); // 20-29 (10)
    } else if (counter < 40) { 
      image(imgRight4, x, y);// 30-39 (10)
    } else if (counter < 50) {  
      image(imgRight5, x, y); // 40-49 (10)
    } else if (counter < 60) { 
      image(imgRight6, x, y); // 50-59 (10)
    } else if (counter < 69) { 
      image(imgRight7, x, y); // 60-68 (9)
    } else { 
      image(imgRight7, x, y); // 69 (1)
      counter=0;
    }

    counter++;
  }

  // render moving UP
  void renderUP() {
    if (counter < 10) { 
      image(imgUP1, x, y); // 0-9 (10)
    } else if (counter < 20) {  
      image(imgUP2, x, y); // 10-19 (10)
    } else if (counter < 30) { 
      image(imgUP3, x, y); // 20-29 (10)
    } else if (counter < 40) { 
      image(imgUP4, x, y);// 30-39 (10)
    } else if (counter < 50) {  
      image(imgUP5, x, y); // 40-49 (10)
    } else if (counter < 59) { 
      image(imgUP6, x, y); // 50-58 (9)
    } else { 
      image(imgUP6, x, y); // 59 (1)
      counter=0;
    }

    counter++;
  }

  boolean crash(Enemy snail) {
    return abs(this.x-snail.x) < 30 && abs(this.y - snail.y-10) < 40;
  }
  
  boolean score(Coin points) {
    return abs(this.x-points.x) < 40 && abs(this.y - points.y-10) < 50;
  }
}
