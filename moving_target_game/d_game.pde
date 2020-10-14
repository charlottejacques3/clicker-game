void game() {
  background(217, 255, 196);
  gameOver.rewind();
  
  //moving target
  fill(255);
  image(selectedCat, x, y, catDiameter, catDiameter);
  
  x = x + vx;
  y = y + vy;
  
  if (x < catDiameter/2 || x > width - catDiameter/2) {
    vx = vx * -1;
  }
  if (y < catDiameter/2 || y > height - catDiameter/2) {
    vy = vy * -1;
  }
  
  //score and lives
  textSize(30);
  fill(0);
  text("SCORE: " + score, width/2, 50);
  text("LIVES: " + lives, width/2, 100);
  
  //pause button
  tactileCircle(750, 50, 25);
  fill(0);
  strokeWeight(1);
  rect(741.5, 32.5, 5, 35);
  rect(754.5, 32.5, 5, 35);
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < catDiameter/2) {
    score = score + 1;
    vx = vx*1.1;
    vy = vy*1.1;
    hit.rewind();
    hit.play();
  } else if(dist(mouseX, mouseY, 750, 50) < 25) {
    mode = PAUSE;
  } else {
    lives = lives - 1;
    miss.rewind();
    miss.play();
    if (lives == 0) mode = GAMEOVER;
  }
}
