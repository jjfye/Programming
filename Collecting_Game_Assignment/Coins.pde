//Collectible Objects Class

class Coin extends Enemy { //inheritance - sub-class coin inheriting x and y from super-class Enemy
  int counter = 0;
  
  PImage img1,img2,img3,img4,img5,img6;
  
  Coin(int x, int y) {
    super(x,y); //calling superclass constructor
    
    img1 = loadImage("coin1.png");
    img1.resize(50, 50);
    img2 = loadImage("coin2.png");
    img2.resize(50, 50);  
    img3 = loadImage("coin3.png");
    img3.resize(50, 50);   
    img4 = loadImage("coin4.png");
    img4.resize(50, 50);
    img5 = loadImage("coin5.png");
    img5.resize(50, 50);
    img6 = loadImage("coin6.png");
    img6.resize(50,50);
  }
  
   void render() {
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
  
  void coinSpawn() {
  if (coinTimer % 100 == 0) {
    pointsList.add(new Coin((int)random(100, width-100), (int)random(100, height-100)));
    coinTimer = 0;
  }   
  for (int i = 0; i<pointsList.size(); i++) {
    Coin currentScore = pointsList.get(i); 
    currentScore.render();

    if (collector.score(currentScore)) {
      pointsList.remove(i);
      score++;
    }
  }
  println("Coins spawning:" + pointsList.size());
}
}
