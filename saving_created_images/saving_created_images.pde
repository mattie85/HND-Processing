PImage pictureOfAMountain;

void setup(){
  
  size(1024, 677);
  
  colorMode(HSB, 100);
  

}


void draw(){
  
  background(255);
  
  pictureOfAMountain = loadImage("LackeMountain.jpg");
  pictureOfAMountain.loadPixels();
  
  float scaledMouseX = map(mouseX, 0, 1023, -50, 50);
  float scaledMouseY = map(mouseY, 0, 676, -50, 50);
  
  //println(scaledMouseX);
  
  for(int x = 0; x < pictureOfAMountain.width; x++){
    for(int y = 0; y < pictureOfAMountain.height; y++){
    
    color thisPixel = pictureOfAMountain.get(x, y);
    
    float hue = hue(thisPixel);
    float saturation = saturation(thisPixel);
    float brightness = brightness(thisPixel);
    
    
    pictureOfAMountain.pixels[x + (y * pictureOfAMountain.width)] = color(hue, 
                                                                          saturation + scaledMouseY, 
                                                                          brightness + scaledMouseX);
    
    }    
  }
  
  pictureOfAMountain.updatePixels();
  
  image(pictureOfAMountain, 0, 0);
  
}
  
  
void mousePressed(){
  
 saveFrame("savedFrames/renderedFrame-####.jpg");
  
}