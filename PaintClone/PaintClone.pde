//finish this paint program.
//if you press more green enough times it goes back to black
//if you press the less green button when the cursor is black it should go to green
//hint modulo command %
//further hint the modulo command in processing doesn't play nice with negatives

//make buttons for blue and red
//debounce the buttons
//hint make a mousePressed method

//Pat on the back for marking your up/down buttons in a nice way.

color cursorcolor = 0;
int red = 10;
int green = 10;
int blue = 10;
int step = 10;
void setup() {
  size(700, 500);
  background(255);
}



void draw() {
  noStroke();
  
  //more red button
  fill(red, 0, 0);
  rect(0,0,50,50);
  fill(255);
  text("UpRed", 7, 25);
  if (mousePressed && mouseX<50 && mouseY<50){
    red = red +step;
  }
  //less red button
  fill(red, 0, 0);
  rect(60,0,50,50);
  fill(255);
  text("DwnRed", 63, 25);
  if (mousePressed && mouseX>60 && mouseX<110 && mouseY<50){
    red = red -step;
  }
  //more green button
  fill(0,green,0);
  rect(120,0,50,50);
  fill(255);
  text("UpGrn", 127, 25);
  if (mousePressed && mouseX>120 && mouseX<170 && mouseY<50){
    green = green +step;
  } 
  //less green button
  fill(0,green,0);
  rect(180,0,50,50);
  fill(255);
  text("DwnGrn", 183, 25);
  if (mousePressed && 180<mouseX && mouseX<230 && mouseY<50){
     green = green -step;
  }
  // more blue button
  fill(0,0,blue);
  rect(240, 0, 50, 50);
  fill(255);
  text("UpBlu", 247, 25);
  if (mousePressed && 240<mouseX && mouseX<290 && mouseY<50){
    blue = blue +step;
  }
  //less blue button
  fill(0,0,blue);
  rect(300, 0, 50, 50);
  fill(255);
  text("DwnBlu", 303, 25);
  if (mousePressed && 300<mouseX && mouseX<350 && mouseY<50){
    blue = blue -step;
  }
  cursorcolor = color(red,green,blue); 
  
  //drawing part
  if (mousePressed) {
    fill(cursorcolor);
    ellipse(mouseX, mouseY, 8, 8);
  }
  //debounces the color buttons
  if (red<0){
    red=255;
  }
  if (green<0){
    green=255;
  }
  if(blue<0){
    blue=255;
  }
  if(red>255){
    red = 0;
  }
  if(green>255){
    green = 0;
  }
  if(blue>255){
    blue = 0;
  }
}
