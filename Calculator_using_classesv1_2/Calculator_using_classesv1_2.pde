Button oneButton;
Button twoButton;
Button threeButton;
Button fourButton;
Button fiveButton;
Button sixButton;
Button sevenButton;
Button eightButton;
Button nineButton;
Button zeroButton;

Button divideButton;
Button multipyButton;
Button minusButton;
Button plusButton;
Button clearButton;
Button equalsButton;



String calculatorDisplay = "";
char buttonlabel;
//int valueMemory;

void setup() {

  size(400, 600);

//Button(int initialXPosition, int initialYPosition, int initialWidth, int initialHeight, color initialHighlightColor, color initialNormalColor, String initialLabel)

  oneButton = new Button(40, 250, 50, 50, color(230), color(255), "1");
  twoButton = new Button(110, 250, 50, 50, color(230), color(255), "2");
  threeButton = new Button(180, 250, 50, 50, color(230), color(255), "3");
  fourButton = new Button(40, 320, 50, 50, color(230), color(255), "4");
  fiveButton = new Button(110, 320, 50, 50, color(230), color(255), "5");
  sixButton = new Button(180, 320, 50, 50, color(230), color(255), "6");
  sevenButton = new Button(40, 390, 50, 50, color(230), color(255), "7");
  eightButton = new Button(110, 390, 50, 50, color(230), color(255), "8");
  nineButton = new Button(180, 390, 50, 50, color(230), color(255), "9");
  zeroButton = new Button(40, 460, 190, 50, color(230), color(255), "0");
  
  divideButton = new Button(250, 250, 50, 50, color(180), color(230), "/");
  multipyButton = new Button(320, 250, 50, 50, color(180), color(230), "*");
  minusButton = new Button(250, 320, 50, 50, color(180), color(230), "-");
  plusButton = new Button(320, 320, 50, 50, color(180), color(230), "+");
  clearButton = new Button(250, 390, 120, 50, color(180), color(230), "C");
  equalsButton = new Button(250, 460, 120, 50, color(180), color(230), "=");
  
//  plusButton = new Button();
//  minusButton = new Button();



}





void draw() {

  background(255);
  rect(20,20,360,200); //display box
  
  oneButton.changeColourOnMouseHover(mouseX, mouseY);  
  oneButton.drawButton();
  twoButton.changeColourOnMouseHover(mouseX, mouseY);  
  twoButton.drawButton();
  threeButton.changeColourOnMouseHover(mouseX, mouseY);  
  threeButton.drawButton();
  fourButton.changeColourOnMouseHover(mouseX, mouseY);  
  fourButton.drawButton();
  fiveButton.changeColourOnMouseHover(mouseX, mouseY);  
  fiveButton.drawButton();
  sixButton.changeColourOnMouseHover(mouseX, mouseY);  
  sixButton.drawButton();
  sevenButton.changeColourOnMouseHover(mouseX, mouseY);  
  sevenButton.drawButton();
  eightButton.changeColourOnMouseHover(mouseX, mouseY);  
  eightButton.drawButton();
  nineButton.changeColourOnMouseHover(mouseX, mouseY);  
  nineButton.drawButton();
  zeroButton.changeColourOnMouseHover(mouseX, mouseY);  
  zeroButton.drawButton();
  
  divideButton.changeColourOnMouseHover(mouseX, mouseY);  
  divideButton.drawButton();
  multipyButton.changeColourOnMouseHover(mouseX, mouseY);  
  multipyButton.drawButton();
  minusButton.changeColourOnMouseHover(mouseX, mouseY);  
  minusButton.drawButton();
  plusButton.changeColourOnMouseHover(mouseX, mouseY);  
  plusButton.drawButton();
  clearButton.changeColourOnMouseHover(mouseX, mouseY);  
  clearButton.drawButton();
  equalsButton.changeColourOnMouseHover(mouseX, mouseY);  
  equalsButton.drawButton();

  fill(255);
  textSize(24);
  text(calculatorDisplay,190,125); //display text 
  fill(0);
  
  
}

void mousePressed(){
  ///////numbers/////////////
 
  
     //char onClick(click) =
    // String buttonchar;
     buttonlabel = oneButton.onClick(mouseX, mouseY); 
     println(buttonlabel); //no values coming up on println with an error appearing.
    /* twoButton.onClick(mouseX, mouseY); 
     threeButton.onClick(mouseX, mouseY); 
     fourButton.onClick(mouseX, mouseY); 
     fiveButton.onClick(mouseX, mouseY); 
     sixButton.onClick(mouseX, mouseY); 
     sevenButton.onClick(mouseX, mouseY); 
     eightButton.onClick(mouseX, mouseY); 
     nineButton.onClick(mouseX, mouseY); 
     zeroButton.onClick(mouseX, mouseY); 
  
  /////symbols/////////

     divideButton.onClick(mouseX, mouseY); 
     multipyButton.onClick(mouseX, mouseY); 
     minusButton.onClick(mouseX, mouseY); 
     plusButton.onClick(mouseX, mouseY); 

  if (mouseX > 250&&mouseX < 250+120 && mouseY > 390 && mouseY < 390+50) {
      calculatorDisplay = "";
  }

     equalsButton.onClick(mouseX, mouseY);
     
     */

}