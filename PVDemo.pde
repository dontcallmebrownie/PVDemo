
  
void setup () {
  

  // Init window
  boolean loop = true;
  
  size(800, 600);
  frameRate(60);
  background(127, 0, 127);
}

void draw () {
  fill(0);
  
  //Main Menu instertion
  mainMenu();
  
  // Main game loop?
}

void mainMenu() {

  

  
  
  
  Button playButton = new Button(300, 250, 200, 100, "Play");
  Button quitButton = new Button(300, 355, 200, 100, "Quit");

  // Title
  textSize(80);
  fill(0, 0, 0);
  text("The Puzzle Vault", 130, 80);
  
  //  Main menu display and functions
   fill(0, 255, 0);
   
   // Test drawing rudimentary buttons and the placements
   //Centered
   while(loop) {
     
     playButton.draw();
     quitButton.draw();
   }
   
}

void play() {
  loop = false;
  
 
}



void quit() {
  exit();
}
