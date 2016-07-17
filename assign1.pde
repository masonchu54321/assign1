PImage hpImage;
PImage fighterImage;
PImage enemyImage;
PImage treasureImage;
PImage bg1Image;
PImage bg2Image;
int x, x_treasure, y_treasure, x_enemy, y_enemy, x_bg1, x_bg2;

void setup () {
  size(640,480) ;
  
  hpImage = loadImage("img/hp.png");
  fighterImage = loadImage("img/fighter.png");
  enemyImage = loadImage("img/enemy.png");
  treasureImage = loadImage("img/treasure.png");
  bg1Image = loadImage("img/bg1.png");
  bg2Image = loadImage("img/bg2.png");
  
  x = floor(random(6,207));
  x_treasure = floor(random(150,580));
  y_treasure = floor(random(35,435));
  x_enemy =0;
  y_enemy = floor(random(35,417));
  rectMode(CORNERS);
  x_bg1 = 0;
  
}

void draw() {
  image(bg1Image,x_bg1 % 1280 -640,0);
  image(bg2Image,(x_bg1+640) % 1280 -640,0);
  x_bg1 += 1;
  rect(5,3,x,25);
  fill(255,0,0);
  image(hpImage,0,0);
  image(fighterImage,590,243);
  image(treasureImage,x_treasure,y_treasure);
  x_enemy +=4;
  image(enemyImage,x_enemy,y_enemy);
  x_enemy %=640;
}
