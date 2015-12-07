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
      float r = red(parrot.pixels[location]); //create variable called r and populate with number from parrot pixels array
      float g = green(parrot.pixels[location]);//create g variable
      float b = blue(parrot.pixels[location]); //create b variable
      pixels[location] = color(g,r,b*2); //pixel array color = the values of G R &B
    }
  }
  updatePixels(); //update pixels to then be displayed 
}
  
  
  
  
  
  