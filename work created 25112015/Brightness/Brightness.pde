PImage parrot;  //create memory space called parrot

void setup(){
  
 size(640,425); //create size of program window
 parrot = loadImage("parrot.jpg"); //populate parrot memory space with parrot image
 
  
}

void draw(){
  
  loadPixels(); //run loadPixel function
  parrot.loadPixels(); //run loadPixel function on parrot image to gain access to its pixels.
  for (int x = 0; x < width; x++) { // double for loop to run through every x and y pixel of the parrot picture.
    for (int y = 0; y < height; y++) {
      int location = x+y*width; // create variable location and populate with number created by x+y * width
      float b = brightness(parrot.pixels[location]); // variable b = number in pixel array 
      if(b > mouseX){ // if statement that if b value is greater that the position of the mouse then pixels[location] = color 255
        pixels[location] = color(255);
      }else{  //else pixels[location] = color 0
        pixels[location] = color(0);
      }
    }
  }
  updatePixels(); //update pixels to be dislayed
}