void options() {
  background(171, 175, 245);

  //titles
  fill(255);
  text("Choose Your Cat", width/2, 100);
  text("Resize Your Cat", 200, 425);
  text("Your Current Cat", 600, 425);

  //close button
  tactileCircle(750, 50, 25);
  stroke(0);
  strokeWeight(5);
  line(740, 40, 760, 60);
  line(760, 40, 740, 60);

  //cats
  image(lightTabby, 100, 225, 150, 150);
  image(grey, 300, 225, 150, 150);
  image(greyTabby, 500, 225, 150, 150);
  image(orange, 700, 225, 150, 150);

  //make cats tactile
  tactileCats(100, 225, 75);
  tactileCats(300, 225, 75);
  tactileCats(500, 225, 75);
  tactileCats(700, 225, 75);

  //slider
  stroke(255);
  line(200, 475, 200, 765);
  if (mouseX > 175 && mouseX < 225 && mouseY > 475 && mouseY < 765) {
    fill(255);
  } else {
    fill(171, 175, 245);
  }
  circle(200, sliderY, 50);
  
  //current cat preview
  image(selectedCat, 600, 620, catDiameter, catDiameter);
}

void optionsClicks() {

  //change mode
  if (dist(mouseX, mouseY, 750, 50) < 25) mode = INTRO;

  //select a cat
  catSelector(100, 225, 75, lightTabby);
  catSelector(300, 225, 75, grey);
  catSelector(500, 225, 75, greyTabby);
  catSelector(700, 225, 75, orange);

  slider();
}

void optionsDrags() {
  slider();
}
