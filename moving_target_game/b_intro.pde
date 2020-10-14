void intro() {
  background(196, 235, 255);
  backgroundMusic.play();
  
  //title
  textSize(80);
  text("Click-a-Cat", width/2, 200);
  
  //play button
  tactileRect(150, 550, 200, 100);
  fill(0);
  stroke(0);
  textSize(45);
  text("PLAY", 250, 600);
  
  //options button
  tactileRect(450, 550, 200, 100);
  fill(0);
  text("OPTIONS", 550, 600);
}

void introClicks() {
  
  //play button
  if (mouseX > 150 && mouseX < 350 && mouseY > 550 && mouseY < 650) mode = GAME;
  
  //options button
  if (mouseX > 450 && mouseX < 650 && mouseY > 550 && mouseY < 650) mode = OPTIONS;
}
