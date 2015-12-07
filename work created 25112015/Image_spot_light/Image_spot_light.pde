PImage parrot;


void setup(){
  
 size(640,425);
 parrot = loadImage("parrot.jpg"); 
  
  
}

void draw(){
 /* 
  image(parrot,0,0);
  loadPixels();
  for (int x = 0; x < width; x++){
    for (int y = 0; y < height; y++) {
      float d = dist(x,y,width/2,height/2);
      int loc = x+y*width;
      pixels[loc] = color(d);
    }
    
  }
  
  updatePixels();
  */
  
  loadPixels();
  parrot.loadPixels();
  for(int x = 0; x < width; x++){    //for loops to go through x pixels until width and go down one y position and start x pixels until width again. Do this loop through the whole pic.
    for(int y = 0; y < height; y++) {
      int location = x+y*width; // pixel location which is calculated by adding x + y and * by width.
      float r = red(parrot.pixels[location]); // float red colour variable from the pixel array using location.
      float g = green(parrot.pixels[location]); // float green colour variable from the pixel array using location.
      float b = blue(parrot.pixels[location]); // float blue colour variable from the pixel array using location.
      float distance = dist(mouseX,mouseY,x,y); // float distance variable using dist (Sets the background gray value based on the distance of the mouse from the center of the screen
      float factor = map(distance,0,200,2,0); //float factor variable using map (remaps a number from 0-200 & 2-0) using distance as a value.
      pixels[location] = color(r*factor,g*factor,b*factor); // pixels[locations] = float variables * the factor variable.
    
    
  }
  
  }
  
  updatePixels(); // update pixels function updates the pixels after being modified.
  
  
}