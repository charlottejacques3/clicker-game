void gameOver() {
  backgroundMusic.rewind();
  gameOver.play();

  //game over text
  background(247, 135, 139);
  textSize(130);
  text("GAME OVER", width/2, 250);

  //score
  textSize(30);
  text("SCORE: " + score, width/2, 360);
  
  //high score
  text("HIGH SCORE: " + highScore, width/2, 400);
  if (score > highScore) highScore = score;

  //play again button
  tactileRect(150, 550, 200, 100);
  fill(0);
  stroke(0);
  textSize(45);
  text("REPLAY", 250, 600);

  //quit button
  tactileRect(450, 550, 200, 100);
  fill(0);
  text("QUIT", 550, 600);
}

void gameOverClicks() {

  //replay button
  if (mouseX > 150 && mouseX < 350 && mouseY > 550 && mouseY < 650) {
    mode = INTRO;
    score = 0;
    lives = 3;
    vx = random(-5, 5);
    vy = random (-5, 5);
  }

  //quit button
  if (mouseX > 450 && mouseX < 650 && mouseY > 550 && mouseY < 650) exit();
}
