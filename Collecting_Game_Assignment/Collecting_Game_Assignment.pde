//Collecting Game

//references that can point to its own class object
Player collector;
Enemy monster;
Coin points;
CountDown timer;
DamageAnimation explosion;

//final int PLAYING = 0; //Constants
//final int FINISHED = 1;
//Implemented enum to maintain a more maintainable code.

gameMode currentGameMode = gameMode.SPLASH;

int spawnTimer = 0;
int coinTimer = 0;
int score = 0;
int health = 100;

ArrayList<Enemy> enemyList = new ArrayList(); //creating an array called enemyList for the class Enemy
ArrayList<Coin> pointsList = new ArrayList();

public enum gameMode { 
  PLAYING, FINISHED, SPLASH
};

void setup() {
  background(100, 220, 100);
  size(900, 600);
  collector = new Player(370, 230);
  explosion = new DamageAnimation(collector.x, collector.y);
  points = new Coin((int)random(100, width-100), (int)random(100, height-100));
  timer = new CountDown(70);

  //monster = new Enemy(10, 10);
  //for (int i = 0; i < 10; i++) { 
  //  enemyList.add(new Enemy(width+(int) random(150), (int)random(380)));
  //}
  //println(enemyList);
}

void draw() {
  if (currentGameMode == gameMode.SPLASH) {
    fill(255);
    background(100, 150, 150);
    //text(timer.GetRemainingTime(), 100, 100);
    textSize(20);
    text("You have 60 seconds to collect as many coins as possible\n                Survive by avoiding the enemy snails", 180, 370);
    text("Game Loading...", width-180, height-25);
    textSize(100);
    fill(255, 0, 0);
    text("Snail Invasion", width/2 - 310, height/2-50);
    if (timer.GetRemainingTime()==60) {
      currentGameMode = gameMode.PLAYING;
    }
    println(timer.GetRemainingTime());
  } else if (currentGameMode == gameMode.PLAYING) {
    fill(255);
    frameRate(60);
    PImage img;
    img = loadImage("grass.png");
    img.resize(900,600);
    background(img);
    textSize(20);
    text("Score: " + score, 20, 25);
    text("Time left: " + timer.GetRemainingTime(), 20, 50);
    text("Health: " + health, 20, 75);

    if (keyPressed == false)
      collector.renderIdle();
    else if (keyCode == LEFT)
      collector.renderLeft();
    else if (keyCode == DOWN)
      collector.renderDown();
    else if (keyCode == RIGHT)
      collector.renderRight();
    else if (keyCode == UP)
      collector.renderUP();

    spawnTimer++; //adds 1 to spawnTimer
    coinTimer++;

    points.coinSpawn();

    if (spawnTimer % 100 == 0) {
      enemyList.add(new Enemy(width, (int)random(100, 500)));
    }

    for (int i = 0; i<enemyList.size(); i++) {
      Enemy currentEnemy = enemyList.get(i); 
      currentEnemy.update(); //method chaining
      //text(i, currentEnemy.x+50, currentEnemy.y+50);

      //if player crashed into a snail, set gameMode to FINISHED and show game over screen
      if (collector.crash(currentEnemy)) {
        health -= 1; //minus 1 from hp every time the player crashes into the enemy
        //println("health:", health);
        explosion.render(collector.x, collector.y);
        if (health == 0) {
          endGame();
        }
      } else if (currentEnemy.x<-100) {
        enemyList.remove(i);
      } else if (timer.GetRemainingTime() == 0) {
        endGame();
      }
    } 
    println(enemyList.size()); //prints array size in console - confirming it works
  }
}

void keyPressed() { //Keypressed events - animation lecture to allow the player to control their character
  if (key == CODED) {
    if (keyCode == UP && collector.y > 0)
      collector.y -= 5;
    else if (keyCode == DOWN && collector.y < height-80)
      collector.y += 5;
    else if (keyCode == RIGHT && collector.x < width-80)
      collector.x += 5;
    else if (keyCode == LEFT && collector.x > 0)
      collector.x -= 5;
  }

  if (key == ' ') {
    currentGameMode = gameMode.FINISHED;
    background(0);
    textSize(60);
    text("PAUSED", 325, 300);
    textSize(20);
    text("Press 1 to continue", 340, 180);
  } else if (key == '1') {
    currentGameMode = gameMode.PLAYING;
  } else if (key == '0') {
    exit();
  }//else if (key == '2') {
  //  timer.resetTime();
  //  currentGameMode = gameMode.PLAYING;
}
//}

void endGame() {
  enemyList.clear();
  pointsList.clear();
  currentGameMode = gameMode.FINISHED;
  background(0);
  textSize(60);
  fill(255, 0, 0);
  text("GAME OVER", 275, 180);
  fill(255);
  textSize(15);
  text("Press '0' to exit game", 370, 380);
  textSize(20);
  text("Score: " + score, 300, 280);
  text("Health: " + health, 405, 330);
  text("Time: " + timer.GetRemainingTime(), 510, 280);
  score = 0;
}
