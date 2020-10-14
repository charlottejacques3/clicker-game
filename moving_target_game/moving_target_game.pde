//Charlotte Jacques
//Block 1-2 B
/*music credit:
Adventures by A Himitsu https://soundcloud.com/a-himitsu
Creative Commons — Attribution 3.0 Unported— CC BY 3.0
Music released by Argofox https://youtu.be/8BXNwnxaVQE
Music promoted by https://www.chosic.com/*/

//minim imports
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//mode variables
int mode;
final int INTRO = 0;
final int OPTIONS = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//font variable
PFont meows;

//image variables
PImage lightTabby, grey, greyTabby, orange;

//moving target variables
float x, y, catDiameter;
float vx, vy;
PImage selectedCat;

//slider variables
float sliderY;

//game variables
int score, lives, highScore;

//sound + music variables
Minim minim;
AudioPlayer hit, miss, gameOver, backgroundMusic;

void setup() {
  size(800, 800);
  //rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = INTRO;
  
  //moving target variables
  x = width/2;
  y = height/2;
  catDiameter = 150;
  vx = random(-5, 5);
  vy = random (-5, 5);
  
  //font variable
  meows = createFont("Meows.ttf", 50);
  textFont(meows);
  
  //image variables
  lightTabby = loadImage("light tabby.png");
  grey = loadImage("grey.png");
  greyTabby = loadImage("grey tabby.png");
  orange = loadImage("orange.png");
  
  //cat selection variables
  selectedCat = lightTabby;
  
  //slider variables
  sliderY = 620;
  
  //game variables
  score = 0;
  lives = 3;
  highScore = 0;
  
  //sound + music variables
  minim = new Minim (this);
  hit = minim.loadFile("hit.mp3");
  miss = minim.loadFile("miss.mp3");
  gameOver = minim.loadFile("game over.mp3");
  backgroundMusic = minim.loadFile("background music.mp3");
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == OPTIONS) {
    options();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else {
    println("Error - mode = " + mode);
  }
}
