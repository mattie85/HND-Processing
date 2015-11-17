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
//String[] numbers = calculatorDisplay.split("[-+*/=]");
//String number1 = numbers[0]; 
//String number2 = numbers[1];
//String buttonchar;
//char buttonlabel;
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
  
    calculatorDisplay += oneButton.onClick(mouseX, mouseY); //the character from the label within the button class gets passed through .onClick which then
    calculatorDisplay += twoButton.onClick(mouseX, mouseY); // needs to get added to the calculatorDisplay string. By using += the character won't replace 
    calculatorDisplay += threeButton.onClick(mouseX, mouseY); //the current value in the calculator string but instead will add it to the end of the string 
    calculatorDisplay += fourButton.onClick(mouseX, mouseY); 
    calculatorDisplay += fiveButton.onClick(mouseX, mouseY); 
    calculatorDisplay += sixButton.onClick(mouseX, mouseY); 
    calculatorDisplay += sevenButton.onClick(mouseX, mouseY); 
    calculatorDisplay += eightButton.onClick(mouseX, mouseY); 
    calculatorDisplay += nineButton.onClick(mouseX, mouseY); 
    calculatorDisplay += zeroButton.onClick(mouseX, mouseY); 
  
  /////symbols/////////

    calculatorDisplay += divideButton.onClick(mouseX, mouseY); 
    calculatorDisplay += multipyButton.onClick(mouseX, mouseY); 
    calculatorDisplay += minusButton.onClick(mouseX, mouseY); 
    calculatorDisplay += plusButton.onClick(mouseX, mouseY); 

  if (mouseX > 250&&mouseX < 250+120 && mouseY > 390 && mouseY < 390+50) {
      calculatorDisplay = "";
  }

    calculatorDisplay += equalsButton.onClick(mouseX, mouseY);
     
     
    calculatorDisplay = calculatorDisplay.replaceAll("\\s",""); //remove from string ""white space and anything that is a space character eg. spacebar
    
    String[] numbers = calculatorDisplay.split("[-+*/=]"); // create an array and store the numbers that come before and after a mathmatical symbol
    for (int x=0; x<numbers.length; x++) { //use a for loop to look throught the length of the array
    //println(numbers[x]); //show the values in the array
    
    //string str = numbers[x];
    int integer = Integer.parseInt(numbers[0]);
    //if(numbers[x] > 1) {
    //int integer2 = Integer.parseInt(numbers[1]);
   // }
    println(integer);
   // println(integer2);
    // under mouse pressed save symbol as a char and then if statement of symbol for calculations. This is for the calculation stage
    // Use the parseInt to convert numbers in a string to a int
    }

}