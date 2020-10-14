//MOUSE ---------------------------------------------------------------------------------------------------------

void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameOverClicks();
  }
}

void mouseDragged() {
  if (mode == OPTIONS) optionsDrags();
}

//TACTILE FUNCTIONS ---------------------------------------------------------------------------------------------

void tactileRect(int x, int y, int w, int h) {

  //make it tactile
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  }

  //regular button
  fill(255);
  rect(x, y, w, h);
}

void tactileCircle(int x, int y, int r) {

  //make it tactile
  if (dist(mouseX, mouseY, x, y) < r) {
    stroke(0);
    strokeWeight(5);
  } else {
    strokeWeight(1);
  } 

  //regular button
  stroke(0);
  fill(255);
  circle(x, y, r*2);
}

void tactileCats(int x, int y, int r) {
  if (dist(mouseX, mouseY, x, y) < r) {
    stroke(5);
  } else {
    noStroke();
  }
  noFill();
  circle(x, y, r*2);
}

//OTHER FUNCTIONS -------------------------------------------------------------------------------------------

void catSelector(int x, int y, int r, PImage clickedCat) {
  if (dist(mouseX, mouseY, x, y) < r) {
    selectedCat = clickedCat;
  }
}

void slider() {
  if (mouseX > 175 && mouseX < 225 && mouseY > 475 && mouseY < 765) {
    sliderY = mouseY;
    catDiameter = map(sliderY, 475, 765, 50, 250);
  }
}
