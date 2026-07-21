class Button {
  
  int textFill, buttonFillR, buttonFillG, buttonFillB, buttonXPos, buttonYPos, buttonSizeX, buttonSizeY;
  String buttonText;
  
 Button() {

   
 }
 
 Button(int x, int y, int sX, int sY, String txt) {
 
   buttonXPos = x;
   buttonYPos = y;
   buttonSizeX = sX;
   buttonSizeY = sY;
   buttonFillR = 0;
   buttonFillG = 255;
   buttonFillB = 0;
   textFill = 0;
   
   buttonText = txt;
 }
 
  void draw() { 
    
    fill(buttonFillR, buttonFillG, buttonFillB);
    
  if(hover()) {
  
    fill(0, 128, 0);
  }
  
  if(hover() && mousePressed) {
  
    fill(0,0,0);
      
    switch(buttonText) {
      case "Quit":
        exit();
        break;
      case "Play":
        play();
        break;
    }
  }
    rect(buttonXPos, buttonYPos, buttonSizeX, buttonSizeY);
    fill(textFill);
    textSize(40);
    text(buttonText, buttonXPos + 60, buttonYPos + 60);

  }
  
 boolean hover() {
    boolean hover = false;

    if (((mouseY > buttonYPos) && (mouseY < buttonYPos + buttonSizeY)) && ((mouseX < buttonXPos + buttonSizeX) && (mouseX > buttonXPos)))
    
      hover = true;
      return hover;
  }
}
