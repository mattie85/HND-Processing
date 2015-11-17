class Button {


  int xPosition;
  int yPosition;
  int buttonWidth;
  int buttonHeight;

  int centerX;
  int centerY;

  color currentButtonFill;

  color highlightColor;
  color normalColor;

  String label;

  

  //--------------------------------

  // Class Constructor - special method with NO return type that is used to set up each Object of this Class

  Button(int initialXPosition, int initialYPosition, int initialWidth, int initialHeight, 
        color initialHighlightColor, color initialNormalColor, String initialLabel) {

    xPosition = initialXPosition;
    yPosition = initialYPosition;
    buttonWidth = initialWidth;
    buttonHeight = initialHeight;

    centerX = xPosition + (buttonWidth / 2);
    centerY = yPosition + (buttonHeight / 2);

    highlightColor = initialHighlightColor;
    normalColor = initialNormalColor;

    currentButtonFill = normalColor;

    label = initialLabel;
  }

  //--------------------------------


  void drawButton() {

    stroke(0);
    strokeWeight(2);

    fill(currentButtonFill);

    rect(xPosition, yPosition, buttonWidth, buttonHeight);

    fill(0);

    textAlign(CENTER, CENTER);
    textSize(12);

    text(label, centerX, centerY);
  }


  void changeColourOnMouseHover(int mouseXPosition, int mouseYPosition) {

    if ((mouseXPosition > xPosition) && (mouseXPosition < (xPosition + buttonWidth)) 
      && (mouseYPosition > yPosition) && (mouseYPosition < (yPosition + buttonHeight))) {

      currentButtonFill = highlightColor;
    }
    else {

      currentButtonFill = normalColor;
    }
  }
  
  char onClick(int mouseXPosition,int mouseYPosition){
    //display the label
     if ((mouseXPosition > xPosition) && (mouseXPosition < (xPosition + buttonWidth)) 
      && (mouseYPosition > yPosition) && (mouseYPosition < (yPosition + buttonHeight))) {
    
    
   // calculatorDisplay += label;
    
    char buttonchar = label.charAt(0);
    
    return buttonchar;   //trying to store the first value in label string as a char and return the value (parameter pass) back to the main body of the program
    // so that when onebutton.onClick() is pressed the value 1 will appear in printline but having an error come up.
   
   }
    
   
  }
}